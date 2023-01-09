IDIR=./include
CC=gcc
CFLAGS=-I. -std=c++11 -Wall -ggdb

LIBS=-lglfw3 -lGL -lX11 -lpthread -lXrandr -lXi -lde
OBJ = test.o
SRCDIR=./src

%.o: %.cpp %(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)
