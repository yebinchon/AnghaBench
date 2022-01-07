
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct atmel_i2c_cmd {int rxsize; int msecs; int param2; int param1; int opcode; int count; int word_addr; } ;


 int COMMAND ;
 int GENKEY_COUNT ;
 int GENKEY_MODE_PRIVATE ;
 int GENKEY_RSP_SIZE ;
 int MAX_EXEC_TIME_GENKEY ;
 int OPCODE_GENKEY ;
 int atmel_i2c_checksum (struct atmel_i2c_cmd*) ;
 int cpu_to_le16 (int ) ;

void atmel_i2c_init_genkey_cmd(struct atmel_i2c_cmd *cmd, u16 keyid)
{
 cmd->word_addr = COMMAND;
 cmd->count = GENKEY_COUNT;
 cmd->opcode = OPCODE_GENKEY;
 cmd->param1 = GENKEY_MODE_PRIVATE;

 cmd->param2 = cpu_to_le16(keyid);

 atmel_i2c_checksum(cmd);

 cmd->msecs = MAX_EXEC_TIME_GENKEY;
 cmd->rxsize = GENKEY_RSP_SIZE;
}
