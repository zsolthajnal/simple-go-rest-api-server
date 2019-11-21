FROM golang:latest 
RUN mkdir /app 
ADD . /app/ 
WORKDIR /app 
ENV GO111MODULE=on
RUN go build -o main . 
CMD ["/app/main"]
