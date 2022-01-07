
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dtv_frontend_properties {int delivery_system; int symbol_rate; int pilot; int fec_inner; int modulation; int inversion; int frequency; } ;
struct dvb_frontend {struct cx24120_state* demodulator_priv; struct dtv_frontend_properties dtv_property_cache; } ;
struct TYPE_6__ {int frequency; int pilot; int pilot_val; int symbol_rate; int clkdiv; int ratediv; int fec_mask; int fec_val; int inversion; int inversion_val; int fec; int modulation; int delsys; } ;
struct TYPE_4__ {int delsys; int pilot; int frequency; int modulation; } ;
struct cx24120_state {int need_clock_set; TYPE_3__ dcur; TYPE_2__* i2c; TYPE_1__ dnxt; } ;
struct cx24120_cmd {int len; int* arg; int id; } ;
struct TYPE_5__ {int dev; } ;


 int CMD_TUNEREQUEST ;
 int CX24120_REG_CLKDIV ;
 int CX24120_REG_RATEDIV ;
 int CX24120_SEARCH_RANGE_KHZ ;
 int EINVAL ;


 int cx24120_clone_params (struct dvb_frontend*) ;
 int cx24120_message_send (struct cx24120_state*,struct cx24120_cmd*) ;
 int cx24120_readreg (struct cx24120_state*,int ) ;
 int cx24120_set_fec (struct cx24120_state*,int ,int ) ;
 int cx24120_set_inversion (struct cx24120_state*,int ) ;
 int cx24120_set_pilot (struct cx24120_state*,int ) ;
 int cx24120_set_symbolrate (struct cx24120_state*,int ) ;
 int cx24120_writereg (struct cx24120_state*,int ,int) ;
 int dev_dbg (int *,char*,...) ;

__attribute__((used)) static int cx24120_set_frontend(struct dvb_frontend *fe)
{
 struct dtv_frontend_properties *c = &fe->dtv_property_cache;
 struct cx24120_state *state = fe->demodulator_priv;
 struct cx24120_cmd cmd;
 int ret;

 switch (c->delivery_system) {
 case 128:
  dev_dbg(&state->i2c->dev, "DVB-S2\n");
  break;
 case 129:
  dev_dbg(&state->i2c->dev, "DVB-S\n");
  break;
 default:
  dev_dbg(&state->i2c->dev,
   "delivery system(%d) not supported\n",
   c->delivery_system);
  return -EINVAL;
 }

 state->dnxt.delsys = c->delivery_system;
 state->dnxt.modulation = c->modulation;
 state->dnxt.frequency = c->frequency;
 state->dnxt.pilot = c->pilot;

 ret = cx24120_set_inversion(state, c->inversion);
 if (ret != 0)
  return ret;

 ret = cx24120_set_fec(state, c->modulation, c->fec_inner);
 if (ret != 0)
  return ret;

 ret = cx24120_set_pilot(state, c->pilot);
 if (ret != 0)
  return ret;

 ret = cx24120_set_symbolrate(state, c->symbol_rate);
 if (ret != 0)
  return ret;


 cx24120_clone_params(fe);

 dev_dbg(&state->i2c->dev,
  "delsys      = %d\n", state->dcur.delsys);
 dev_dbg(&state->i2c->dev,
  "modulation  = %d\n", state->dcur.modulation);
 dev_dbg(&state->i2c->dev,
  "frequency   = %d\n", state->dcur.frequency);
 dev_dbg(&state->i2c->dev,
  "pilot       = %d (val = 0x%02x)\n",
  state->dcur.pilot, state->dcur.pilot_val);
 dev_dbg(&state->i2c->dev,
  "symbol_rate = %d (clkdiv/ratediv = 0x%02x/0x%02x)\n",
   state->dcur.symbol_rate,
   state->dcur.clkdiv, state->dcur.ratediv);
 dev_dbg(&state->i2c->dev,
  "FEC         = %d (mask/val = 0x%02x/0x%02x)\n",
  state->dcur.fec, state->dcur.fec_mask, state->dcur.fec_val);
 dev_dbg(&state->i2c->dev,
  "Inversion   = %d (val = 0x%02x)\n",
  state->dcur.inversion, state->dcur.inversion_val);


 state->need_clock_set = 1;


 cmd.id = CMD_TUNEREQUEST;
 cmd.len = 15;
 cmd.arg[0] = 0;
 cmd.arg[1] = (state->dcur.frequency & 0xff0000) >> 16;
 cmd.arg[2] = (state->dcur.frequency & 0x00ff00) >> 8;
 cmd.arg[3] = (state->dcur.frequency & 0x0000ff);
 cmd.arg[4] = ((state->dcur.symbol_rate / 1000) & 0xff00) >> 8;
 cmd.arg[5] = ((state->dcur.symbol_rate / 1000) & 0x00ff);
 cmd.arg[6] = state->dcur.inversion;
 cmd.arg[7] = state->dcur.fec_val | state->dcur.pilot_val;
 cmd.arg[8] = CX24120_SEARCH_RANGE_KHZ >> 8;
 cmd.arg[9] = CX24120_SEARCH_RANGE_KHZ & 0xff;
 cmd.arg[10] = 0;
 cmd.arg[11] = state->dcur.fec_mask;
 cmd.arg[12] = state->dcur.ratediv;
 cmd.arg[13] = state->dcur.clkdiv;
 cmd.arg[14] = 0;


 ret = cx24120_message_send(state, &cmd);
 if (ret != 0)
  return ret;


 ret = cx24120_writereg(state, CX24120_REG_CLKDIV, state->dcur.clkdiv);
 ret = cx24120_readreg(state, CX24120_REG_RATEDIV);
 ret &= 0xfffffff0;
 ret |= state->dcur.ratediv;
 ret = cx24120_writereg(state, CX24120_REG_RATEDIV, ret);

 return 0;
}
