
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_frontend {struct cx24120_state* demodulator_priv; } ;
struct cx24120_state {TYPE_1__* i2c; } ;
struct cx24120_cmd {int len; int* arg; int id; } ;
typedef enum fe_sec_voltage { ____Placeholder_fe_sec_voltage } fe_sec_voltage ;
struct TYPE_2__ {int dev; } ;


 int CMD_SETVOLTAGE ;
 int SEC_VOLTAGE_18 ;
 int cx24120_message_send (struct cx24120_state*,struct cx24120_cmd*) ;
 int dev_dbg (int *,char*,int) ;

__attribute__((used)) static int cx24120_set_voltage(struct dvb_frontend *fe,
          enum fe_sec_voltage voltage)
{
 struct cx24120_state *state = fe->demodulator_priv;
 struct cx24120_cmd cmd;

 dev_dbg(&state->i2c->dev, "(%d)\n", voltage);

 cmd.id = CMD_SETVOLTAGE;
 cmd.len = 2;
 cmd.arg[0] = 0x00;
 cmd.arg[1] = (voltage == SEC_VOLTAGE_18) ? 0x01 : 0x00;

 return cx24120_message_send(state, &cmd);
}
