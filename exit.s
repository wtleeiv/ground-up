# check exit status
# echo $? after running

# declare data store in memory
.section .data

# text: program source code
.section .text
  # _start: special symbol used by linker
  # analogous to main in c
  .globl _start

_start:
  movl $1, %eax /* system call number
                   1 = exit
                   stored in eax */
  movl $5, %ebx # return status
  int $0x80     # interrupt kernel -> run command in rax
