FROM node


RUN mkdir  /usr/src/app
COPY . /usr/src/app
WORKDIR /usr/src/app

RUN npm run build

ENV PORT=80
EXPOSE 80

CMD ["npm","start"]