
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct dtv_frontend_properties {scalar_t__ modulation; scalar_t__ fec_inner; scalar_t__ pilot; } ;
struct dvb_frontend {struct cx24120_state* demodulator_priv; struct dtv_frontend_properties dtv_property_cache; } ;
struct TYPE_5__ {scalar_t__ delsys; } ;
struct cx24120_state {TYPE_2__* i2c; TYPE_1__ dcur; } ;
struct cx24120_cmd {int len; int* arg; int id; } ;
struct TYPE_7__ {scalar_t__ delsys; scalar_t__ mod; scalar_t__ fec; scalar_t__ pilot; int m_rat; int n_rat; int rate; } ;
struct TYPE_6__ {int dev; } ;


 int ARRAY_SIZE (TYPE_3__*) ;
 int CMD_CLOCK_READ ;
 int CMD_CLOCK_SET ;
 TYPE_3__* clock_ratios_table ;
 int cx24120_calculate_ber_window (struct cx24120_state*,int) ;
 int cx24120_get_fec (struct dvb_frontend*) ;
 int cx24120_message_send (struct cx24120_state*,struct cx24120_cmd*) ;
 int cx24120_message_sendrcv (struct cx24120_state*,struct cx24120_cmd*,int) ;
 int dev_dbg (int *,char*,int,int,int,int,int,int) ;
 int info (char*) ;

__attribute__((used)) static void cx24120_set_clock_ratios(struct dvb_frontend *fe)
{
 struct dtv_frontend_properties *c = &fe->dtv_property_cache;
 struct cx24120_state *state = fe->demodulator_priv;
 struct cx24120_cmd cmd;
 int ret, idx;


 ret = cx24120_get_fec(fe);
 if (ret != 0)
  return;


 for (idx = 0; idx < ARRAY_SIZE(clock_ratios_table); idx++) {
  if (clock_ratios_table[idx].delsys != state->dcur.delsys)
   continue;
  if (clock_ratios_table[idx].mod != c->modulation)
   continue;
  if (clock_ratios_table[idx].fec != c->fec_inner)
   continue;
  if (clock_ratios_table[idx].pilot != c->pilot)
   continue;

  break;
 }

 if (idx >= ARRAY_SIZE(clock_ratios_table)) {
  info("Clock ratio not found - data reception in danger\n");
  return;
 }


 cmd.id = CMD_CLOCK_READ;
 cmd.len = 1;
 cmd.arg[0] = 0x00;
 ret = cx24120_message_sendrcv(state, &cmd, 6);
 if (ret != 0)
  return;


 dev_dbg(&state->i2c->dev, "m=%d, n=%d; idx: %d m=%d, n=%d, rate=%d\n",
  cmd.arg[2] | (cmd.arg[1] << 8) | (cmd.arg[0] << 16),
  cmd.arg[5] | (cmd.arg[4] << 8) | (cmd.arg[3] << 16),
  idx,
  clock_ratios_table[idx].m_rat,
  clock_ratios_table[idx].n_rat,
  clock_ratios_table[idx].rate);


 cmd.id = CMD_CLOCK_SET;
 cmd.len = 10;
 cmd.arg[0] = 0;
 cmd.arg[1] = 0x10;
 cmd.arg[2] = (clock_ratios_table[idx].m_rat >> 16) & 0xff;
 cmd.arg[3] = (clock_ratios_table[idx].m_rat >> 8) & 0xff;
 cmd.arg[4] = (clock_ratios_table[idx].m_rat >> 0) & 0xff;
 cmd.arg[5] = (clock_ratios_table[idx].n_rat >> 16) & 0xff;
 cmd.arg[6] = (clock_ratios_table[idx].n_rat >> 8) & 0xff;
 cmd.arg[7] = (clock_ratios_table[idx].n_rat >> 0) & 0xff;
 cmd.arg[8] = (clock_ratios_table[idx].rate >> 8) & 0xff;
 cmd.arg[9] = (clock_ratios_table[idx].rate >> 0) & 0xff;

 cx24120_message_send(state, &cmd);


 cx24120_calculate_ber_window(state, clock_ratios_table[idx].rate);
}
