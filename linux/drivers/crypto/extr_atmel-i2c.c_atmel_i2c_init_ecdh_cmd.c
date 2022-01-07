
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct atmel_i2c_cmd {int rxsize; int msecs; int data; int param2; int param1; int opcode; int count; int word_addr; } ;


 size_t ATMEL_ECC_PUBKEY_SIZE ;
 int COMMAND ;
 int DATA_SLOT_2 ;
 int ECDH_COUNT ;
 int ECDH_PREFIX_MODE ;
 int ECDH_RSP_SIZE ;
 int EINVAL ;
 int MAX_EXEC_TIME_ECDH ;
 int OPCODE_ECDH ;
 int atmel_i2c_checksum (struct atmel_i2c_cmd*) ;
 int cpu_to_le16 (int ) ;
 size_t sg_copy_to_buffer (struct scatterlist*,int ,int ,size_t) ;
 int sg_nents_for_len (struct scatterlist*,size_t) ;

int atmel_i2c_init_ecdh_cmd(struct atmel_i2c_cmd *cmd,
       struct scatterlist *pubkey)
{
 size_t copied;

 cmd->word_addr = COMMAND;
 cmd->count = ECDH_COUNT;
 cmd->opcode = OPCODE_ECDH;
 cmd->param1 = ECDH_PREFIX_MODE;

 cmd->param2 = cpu_to_le16(DATA_SLOT_2);






 copied = sg_copy_to_buffer(pubkey,
       sg_nents_for_len(pubkey,
          ATMEL_ECC_PUBKEY_SIZE),
       cmd->data, ATMEL_ECC_PUBKEY_SIZE);
 if (copied != ATMEL_ECC_PUBKEY_SIZE)
  return -EINVAL;

 atmel_i2c_checksum(cmd);

 cmd->msecs = MAX_EXEC_TIME_ECDH;
 cmd->rxsize = ECDH_RSP_SIZE;

 return 0;
}
