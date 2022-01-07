
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int* reply_buf; int reply_len; int status; int data_len; int link; int * data_buf; struct smu_i2c_cmd* misc; int done; int cmd; } ;
struct TYPE_4__ {int caddr; int devaddr; int type; int sublen; int datalen; int* data; int * subaddr; int bus; } ;
struct smu_i2c_cmd {int* pdata; int retries; int status; int read; int link; TYPE_2__ scmd; TYPE_1__ info; scalar_t__ stage; } ;
struct TYPE_6__ {int lock; int cmd_i2c_list; int * cmd_cur; int cmd_list; struct smu_i2c_cmd* cmd_i2c_cur; } ;


 int DPRINTK (char*,...) ;
 int EINVAL ;
 int ENODEV ;
 int SMU_CMD_I2C_COMMAND ;
 int SMU_I2C_READ_MAX ;



 int SMU_I2C_WRITE_MAX ;
 int list_add_tail (int *,int *) ;
 int memset (int*,int,int) ;
 TYPE_3__* smu ;
 int smu_i2c_low_completion ;
 int smu_start_cmd () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int smu_queue_i2c(struct smu_i2c_cmd *cmd)
{
 unsigned long flags;

 if (smu == ((void*)0))
  return -ENODEV;


 cmd->scmd.cmd = SMU_CMD_I2C_COMMAND;
 cmd->scmd.done = smu_i2c_low_completion;
 cmd->scmd.misc = cmd;
 cmd->scmd.reply_buf = cmd->pdata;
 cmd->scmd.reply_len = sizeof(cmd->pdata);
 cmd->scmd.data_buf = (u8 *)(char *)&cmd->info;
 cmd->scmd.status = 1;
 cmd->stage = 0;
 cmd->pdata[0] = 0xff;
 cmd->retries = 20;
 cmd->status = 1;




 cmd->info.caddr = cmd->info.devaddr;
 cmd->read = cmd->info.devaddr & 0x01;
 switch(cmd->info.type) {
 case 129:
  memset(&cmd->info.sublen, 0, 4);
  break;
 case 130:
  cmd->info.devaddr &= 0xfe;

 case 128:
  if (cmd->info.sublen > 3)
   return -EINVAL;
  break;
 default:
  return -EINVAL;
 }



 if (cmd->read) {
  if (cmd->info.datalen > SMU_I2C_READ_MAX)
   return -EINVAL;
  memset(cmd->info.data, 0xff, cmd->info.datalen);
  cmd->scmd.data_len = 9;
 } else {
  if (cmd->info.datalen > SMU_I2C_WRITE_MAX)
   return -EINVAL;
  cmd->scmd.data_len = 9 + cmd->info.datalen;
 }

 DPRINTK("SMU: i2c enqueuing command\n");
 DPRINTK("SMU:   %s, len=%d bus=%x addr=%x sub0=%x type=%x\n",
  cmd->read ? "read" : "write", cmd->info.datalen,
  cmd->info.bus, cmd->info.caddr,
  cmd->info.subaddr[0], cmd->info.type);





 spin_lock_irqsave(&smu->lock, flags);
 if (smu->cmd_i2c_cur == ((void*)0)) {
  smu->cmd_i2c_cur = cmd;
  list_add_tail(&cmd->scmd.link, &smu->cmd_list);
  if (smu->cmd_cur == ((void*)0))
   smu_start_cmd();
 } else
  list_add_tail(&cmd->link, &smu->cmd_i2c_list);
 spin_unlock_irqrestore(&smu->lock, flags);

 return 0;
}
