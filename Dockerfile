FROM typelead/eta:latest

USER ubuntu
RUN mkdir /home/ubuntu/src
WORKDIR /home/ubuntu/src
COPY ./src /home/ubuntu/src
RUN sudo chown -R ubuntu .
RUN sudo chgrp -R ubuntu .
RUN eta ./Main.hs
CMD java -jar RunMain.jar
