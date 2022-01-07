
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_i2c_cmd {int rxsize; int msecs; int count; scalar_t__ param2; scalar_t__ param1; int opcode; int word_addr; } ;


 int COMMAND ;
 int MAX_EXEC_TIME_RANDOM ;
 int OPCODE_RANDOM ;
 int RANDOM_COUNT ;
 int RANDOM_RSP_SIZE ;
 int atmel_i2c_checksum (struct atmel_i2c_cmd*) ;

void atmel_i2c_init_random_cmd(struct atmel_i2c_cmd *cmd)
{
 cmd->word_addr = COMMAND;
 cmd->opcode = OPCODE_RANDOM;
 cmd->param1 = 0;
 cmd->param2 = 0;
 cmd->count = RANDOM_COUNT;

 atmel_i2c_checksum(cmd);

 cmd->msecs = MAX_EXEC_TIME_RANDOM;
 cmd->rxsize = RANDOM_RSP_SIZE;
}
