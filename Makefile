###############################################################################
### test-sgx
###
### A command line based SGX feature enumeration tool
###
### @see     https://www.gnu.org/software/make/manual/make.html
###
### @file    Makefile
### @author  Mark Nelson marknels@hawaii.edu>
###############################################################################

TARGET=test-sgx

test-sgx: cpuid.c test-sgx.c rdmsr.c
	gcc -Wall -Wextra -Wpedantic -masm=intel -std=c2x -o ${TARGET} -lcap cpuid.c rdmsr.c test-sgx.c

test: ${TARGET}
	./${TARGET}
	
clean:
	rm -fr ${TARGET} *.o *.obj *.exe
