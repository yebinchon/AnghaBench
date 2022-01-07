
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cx24120_state {TYPE_1__* i2c; scalar_t__ mpeg_enabled; } ;
struct cx24120_cmd {int id; int len; int * arg; } ;
struct TYPE_2__ {int dev; } ;


 int CX24120_REG_CMD_ARGS ;
 int CX24120_REG_CMD_END ;
 int CX24120_REG_CMD_START ;
 int EREMOTEIO ;
 int cx24120_check_cmd (struct cx24120_state*,int) ;
 scalar_t__ cx24120_readreg (struct cx24120_state*,int ) ;
 int cx24120_writereg (struct cx24120_state*,int ,int) ;
 int cx24120_writeregs (struct cx24120_state*,int ,int *,int ,int) ;
 int dev_dbg (int *,char*,int) ;
 int err (char*) ;
 int msleep (int) ;

__attribute__((used)) static int cx24120_message_send(struct cx24120_state *state,
    struct cx24120_cmd *cmd)
{
 int ficus;

 if (state->mpeg_enabled) {

  cx24120_check_cmd(state, cmd->id);
 }

 cx24120_writereg(state, CX24120_REG_CMD_START, cmd->id);
 cx24120_writeregs(state, CX24120_REG_CMD_ARGS, &cmd->arg[0],
     cmd->len, 1);
 cx24120_writereg(state, CX24120_REG_CMD_END, 0x01);

 ficus = 1000;
 while (cx24120_readreg(state, CX24120_REG_CMD_END)) {
  msleep(20);
  ficus -= 20;
  if (ficus == 0) {
   err("Error sending message to firmware\n");
   return -EREMOTEIO;
  }
 }
 dev_dbg(&state->i2c->dev, "sent message 0x%02x\n", cmd->id);

 return 0;
}
