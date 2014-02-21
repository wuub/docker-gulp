FROM dockerfile/nodejs

RUN apt-get update
RUN apt-get install -y ruby-dev build-essential
RUN gem install compass --pre

RUN npm install -g gulp
RUN npm install gulp
RUN npm install gulp-coffee
RUN npm install gulp-concat
RUN npm install gulp-uglify
RUN npm install gulp-compass

VOLUME  ["/static"]
WORKDIR /static

CMD ["gulp"]
