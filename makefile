CC = g++
FLAGS = -std=c++14 -Wall -g
OBJS = hw16.o
FILES = hw16.cpp

all: hw16

hw16: $(OBJS)
	$(CC) $(FLAGS) $(OBJS) -o hw16

hw16.o: hw16.cpp
	$(CC) $(FLAGS) -c hw16.cpp

tar:
	tar -cf hw16.tar hw16.scr Makefile $(FILES)

clean:
	rm *.o *.tar *.scr hw16

sudoClean:
	rm *.o *.scr hw16