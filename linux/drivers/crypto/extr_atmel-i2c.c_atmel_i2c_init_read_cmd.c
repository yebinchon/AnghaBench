
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_i2c_cmd {int rxsize; int msecs; int count; int param2; int param1; int opcode; int word_addr; } ;


 int COMMAND ;
 int CONFIG_ZONE ;
 int DEVICE_LOCK_ADDR ;
 int MAX_EXEC_TIME_READ ;
 int OPCODE_READ ;
 int READ_COUNT ;
 int READ_RSP_SIZE ;
 int atmel_i2c_checksum (struct atmel_i2c_cmd*) ;
 int cpu_to_le16 (int ) ;

void atmel_i2c_init_read_cmd(struct atmel_i2c_cmd *cmd)
{
 cmd->word_addr = COMMAND;
 cmd->opcode = OPCODE_READ;




 cmd->param1 = CONFIG_ZONE;
 cmd->param2 = cpu_to_le16(DEVICE_LOCK_ADDR);
 cmd->count = READ_COUNT;

 atmel_i2c_checksum(cmd);

 cmd->msecs = MAX_EXEC_TIME_READ;
 cmd->rxsize = READ_RSP_SIZE;
}
