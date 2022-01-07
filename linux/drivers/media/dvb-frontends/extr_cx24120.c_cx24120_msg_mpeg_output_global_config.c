
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
struct cx24120_state {TYPE_1__* i2c; void* mpeg_enabled; } ;
struct cx24120_cmd {int len; int* arg; int id; } ;
struct TYPE_2__ {int dev; } ;


 int CMD_MPEG_ONOFF ;
 int cx24120_message_send (struct cx24120_state*,struct cx24120_cmd*) ;
 int dev_dbg (int *,char*,char*) ;

__attribute__((used)) static int cx24120_msg_mpeg_output_global_config(struct cx24120_state *state,
       u8 enable)
{
 struct cx24120_cmd cmd;
 int ret;

 cmd.id = CMD_MPEG_ONOFF;
 cmd.len = 4;
 cmd.arg[0] = 0x01;
 cmd.arg[1] = 0x00;
 cmd.arg[2] = enable ? 0 : (u8)(-1);
 cmd.arg[3] = 0x01;

 ret = cx24120_message_send(state, &cmd);
 if (ret != 0) {
  dev_dbg(&state->i2c->dev, "failed to %s MPEG output\n",
   enable ? "enable" : "disable");
  return ret;
 }

 state->mpeg_enabled = enable;
 dev_dbg(&state->i2c->dev, "MPEG output %s\n",
  enable ? "enabled" : "disabled");

 return 0;
}
