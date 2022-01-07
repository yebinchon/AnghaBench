
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct stv090x_state {scalar_t__ device; int demod; TYPE_1__* internal; } ;
struct dvb_frontend {struct stv090x_state* demodulator_priv; } ;
struct TYPE_2__ {int demod_lock; } ;


 int ADC1_PON_FIELD ;
 int ADC2_PON_FIELD ;
 int DISEQC1_PON_FIELD ;
 int DISEQC2_PON_FIELD ;
 int FE_DEBUG ;
 int FE_ERROR ;
 int STANDBY_FIELD ;
 int STOP_CLKADCI1_FIELD ;
 int STOP_CLKADCI2_FIELD ;
 int STOP_CLKFEC_FIELD ;
 int STOP_CLKPKDT1_FIELD ;
 int STOP_CLKPKDT2_FIELD ;
 int STOP_CLKSAMP1_FIELD ;
 int STOP_CLKSAMP2_FIELD ;
 int STOP_CLKTS_FIELD ;
 int STOP_CLKVIT1_FIELD ;
 int STOP_CLKVIT2_FIELD ;
 scalar_t__ STV0900 ;


 int STV090x_SETFIELD (int ,int ,int) ;
 int STV090x_STOPCLK1 ;
 int STV090x_STOPCLK2 ;
 int STV090x_SYNTCTRL ;
 int STV090x_TSTTNR1 ;
 int STV090x_TSTTNR2 ;
 int STV090x_TSTTNR3 ;
 int STV090x_TSTTNR4 ;
 int dprintk (int ,int,char*,...) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stv090x_read_reg (struct stv090x_state*,int ) ;
 scalar_t__ stv090x_write_reg (struct stv090x_state*,int ,int ) ;

__attribute__((used)) static int stv090x_wakeup(struct dvb_frontend *fe)
{
 struct stv090x_state *state = fe->demodulator_priv;
 u32 reg;

 dprintk(FE_DEBUG, 1, "Wake %s(%d) from standby",
  state->device == STV0900 ? "STV0900" : "STV0903",
  state->demod);

 mutex_lock(&state->internal->demod_lock);


 reg = stv090x_read_reg(state, STV090x_SYNTCTRL);
 STV090x_SETFIELD(reg, STANDBY_FIELD, 0x00);
 if (stv090x_write_reg(state, STV090x_SYNTCTRL, reg) < 0)
  goto err;

 switch (state->demod) {
 case 129:

  reg = stv090x_read_reg(state, STV090x_TSTTNR1);
  STV090x_SETFIELD(reg, ADC1_PON_FIELD, 1);
  if (stv090x_write_reg(state, STV090x_TSTTNR1, reg) < 0)
   goto err;

  reg = stv090x_read_reg(state, STV090x_TSTTNR2);
  STV090x_SETFIELD(reg, DISEQC1_PON_FIELD, 1);
  if (stv090x_write_reg(state, STV090x_TSTTNR2, reg) < 0)
   goto err;


  reg = stv090x_read_reg(state, STV090x_STOPCLK1);

  STV090x_SETFIELD(reg, STOP_CLKPKDT1_FIELD, 0);

  STV090x_SETFIELD(reg, STOP_CLKADCI1_FIELD, 0);

  STV090x_SETFIELD(reg, STOP_CLKFEC_FIELD, 0);
  if (stv090x_write_reg(state, STV090x_STOPCLK1, reg) < 0)
   goto err;
  reg = stv090x_read_reg(state, STV090x_STOPCLK2);

  STV090x_SETFIELD(reg, STOP_CLKSAMP1_FIELD, 0);

  STV090x_SETFIELD(reg, STOP_CLKVIT1_FIELD, 0);

  STV090x_SETFIELD(reg, STOP_CLKTS_FIELD, 0);
  if (stv090x_write_reg(state, STV090x_STOPCLK2, reg) < 0)
   goto err;
  break;

 case 128:

  reg = stv090x_read_reg(state, STV090x_TSTTNR3);
  STV090x_SETFIELD(reg, ADC2_PON_FIELD, 1);
  if (stv090x_write_reg(state, STV090x_TSTTNR3, reg) < 0)
   goto err;

  reg = stv090x_read_reg(state, STV090x_TSTTNR4);
  STV090x_SETFIELD(reg, DISEQC2_PON_FIELD, 1);
  if (stv090x_write_reg(state, STV090x_TSTTNR4, reg) < 0)
   goto err;


  reg = stv090x_read_reg(state, STV090x_STOPCLK1);

  STV090x_SETFIELD(reg, STOP_CLKPKDT2_FIELD, 0);

  STV090x_SETFIELD(reg, STOP_CLKADCI2_FIELD, 0);

  STV090x_SETFIELD(reg, STOP_CLKFEC_FIELD, 0);
  if (stv090x_write_reg(state, STV090x_STOPCLK1, reg) < 0)
   goto err;
  reg = stv090x_read_reg(state, STV090x_STOPCLK2);

  STV090x_SETFIELD(reg, STOP_CLKSAMP2_FIELD, 0);

  STV090x_SETFIELD(reg, STOP_CLKVIT2_FIELD, 0);

  STV090x_SETFIELD(reg, STOP_CLKTS_FIELD, 0);
  if (stv090x_write_reg(state, STV090x_STOPCLK2, reg) < 0)
   goto err;
  break;

 default:
  dprintk(FE_ERROR, 1, "Wrong demodulator!");
  break;
 }

 mutex_unlock(&state->internal->demod_lock);
 return 0;
err:
 mutex_unlock(&state->internal->demod_lock);
 dprintk(FE_ERROR, 1, "I/O error");
 return -1;
}
