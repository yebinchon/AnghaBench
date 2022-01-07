
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_frontend {struct cx24120_state* demodulator_priv; } ;
struct cx24120_state {TYPE_1__* i2c; } ;
struct cx24120_cmd {int len; int* arg; int id; } ;
typedef enum fe_sec_tone_mode { ____Placeholder_fe_sec_tone_mode } fe_sec_tone_mode ;
struct TYPE_2__ {int dev; } ;


 int CMD_SETTONE ;
 int EINVAL ;
 int SEC_TONE_OFF ;
 int SEC_TONE_ON ;
 int cx24120_message_send (struct cx24120_state*,struct cx24120_cmd*) ;
 int dev_dbg (int *,char*,int) ;
 int err (char*,int) ;

__attribute__((used)) static int cx24120_set_tone(struct dvb_frontend *fe, enum fe_sec_tone_mode tone)
{
 struct cx24120_state *state = fe->demodulator_priv;
 struct cx24120_cmd cmd;

 dev_dbg(&state->i2c->dev, "(%d)\n", tone);

 if ((tone != SEC_TONE_ON) && (tone != SEC_TONE_OFF)) {
  err("Invalid tone=%d\n", tone);
  return -EINVAL;
 }

 cmd.id = CMD_SETTONE;
 cmd.len = 4;
 cmd.arg[0] = 0x00;
 cmd.arg[1] = 0x00;
 cmd.arg[2] = 0x00;
 cmd.arg[3] = (tone == SEC_TONE_ON) ? 0x01 : 0x00;

 return cx24120_message_send(state, &cmd);
}
