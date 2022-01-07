
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smu_i2c_cmd {int stage; int* pdata; scalar_t__ retries; scalar_t__ read; } ;
struct smu_cmd {scalar_t__ status; int reply_len; int* reply_buf; int* data_buf; int data_len; } ;
struct TYPE_2__ {int i2c_timer; struct smu_i2c_cmd* cmd_i2c_cur; } ;


 int BUG_ON (int) ;
 int DPRINTK (char*,...) ;
 scalar_t__ jiffies ;
 int mdelay (int) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 TYPE_1__* smu ;
 int smu_i2c_complete_command (struct smu_i2c_cmd*,int) ;
 int smu_i2c_retry (int *) ;
 int smu_irq_inited ;
 int smu_queue_cmd (struct smu_cmd*) ;

__attribute__((used)) static void smu_i2c_low_completion(struct smu_cmd *scmd, void *misc)
{
 struct smu_i2c_cmd *cmd = misc;
 int fail = 0;

 DPRINTK("SMU: i2c compl. stage=%d status=%x pdata[0]=%x rlen: %x\n",
  cmd->stage, scmd->status, cmd->pdata[0], scmd->reply_len);


 if (scmd->status < 0)
  fail = 1;
 else if (cmd->read) {
  if (cmd->stage == 0)
   fail = cmd->pdata[0] != 0;
  else
   fail = cmd->pdata[0] >= 0x80;
 } else {
  fail = cmd->pdata[0] != 0;
 }



 if (fail && --cmd->retries > 0) {
  DPRINTK("SMU: i2c failure, starting timer...\n");
  BUG_ON(cmd != smu->cmd_i2c_cur);
  if (!smu_irq_inited) {
   mdelay(5);
   smu_i2c_retry(((void*)0));
   return;
  }
  mod_timer(&smu->i2c_timer, jiffies + msecs_to_jiffies(5));
  return;
 }


 if (fail || cmd->stage != 0) {
  smu_i2c_complete_command(cmd, fail);
  return;
 }

 DPRINTK("SMU: going to stage 1\n");


 scmd->reply_buf = cmd->pdata;
 scmd->reply_len = sizeof(cmd->pdata);
 scmd->data_buf = cmd->pdata;
 scmd->data_len = 1;
 cmd->pdata[0] = 0;
 cmd->stage = 1;
 cmd->retries = 20;
 smu_queue_cmd(scmd);
}
