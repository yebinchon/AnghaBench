
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_frontend {struct cx24120_state* demodulator_priv; } ;
struct cx24120_state {TYPE_1__* i2c; } ;
struct cx24120_cmd {int* arg; scalar_t__ len; int id; } ;
typedef enum fe_sec_mini_cmd { ____Placeholder_fe_sec_mini_cmd } fe_sec_mini_cmd ;
struct TYPE_2__ {int dev; } ;


 int CMD_DISEQC_BURST ;
 int SEC_MINI_B ;
 int cx24120_message_send (struct cx24120_state*,struct cx24120_cmd*) ;
 int dev_dbg (int *,char*) ;

__attribute__((used)) static int cx24120_diseqc_send_burst(struct dvb_frontend *fe,
         enum fe_sec_mini_cmd burst)
{
 struct cx24120_state *state = fe->demodulator_priv;
 struct cx24120_cmd cmd;

 dev_dbg(&state->i2c->dev, "\n");
 cmd.id = CMD_DISEQC_BURST;
 cmd.len = 0;
 cmd.arg[0] = 0x00;
 cmd.arg[1] = (burst == SEC_MINI_B) ? 0x01 : 0x00;

 return cx24120_message_send(state, &cmd);
}
