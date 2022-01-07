
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct stv090x_state {scalar_t__ device; int demod; TYPE_2__* internal; TYPE_1__* config; } ;
struct dvb_frontend {struct stv090x_state* demodulator_priv; } ;
struct TYPE_4__ {int demod_lock; } ;
struct TYPE_3__ {scalar_t__ (* tuner_sleep ) (struct dvb_frontend*) ;} ;


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


 int STV090x_GETFIELD (int ,int ) ;
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
 scalar_t__ stub1 (struct dvb_frontend*) ;
 scalar_t__ stv090x_i2c_gate_ctrl (struct stv090x_state*,int) ;
 int stv090x_read_reg (struct stv090x_state*,int ) ;
 scalar_t__ stv090x_write_reg (struct stv090x_state*,int ,int ) ;

__attribute__((used)) static int stv090x_sleep(struct dvb_frontend *fe)
{
 struct stv090x_state *state = fe->demodulator_priv;
 u32 reg;
 u8 full_standby = 0;

 if (stv090x_i2c_gate_ctrl(state, 1) < 0)
  goto err;

 if (state->config->tuner_sleep) {
  if (state->config->tuner_sleep(fe) < 0)
   goto err_gateoff;
 }

 if (stv090x_i2c_gate_ctrl(state, 0) < 0)
  goto err;

 dprintk(FE_DEBUG, 1, "Set %s(%d) to sleep",
  state->device == STV0900 ? "STV0900" : "STV0903",
  state->demod);

 mutex_lock(&state->internal->demod_lock);

 switch (state->demod) {
 case 129:

  reg = stv090x_read_reg(state, STV090x_TSTTNR1);
  STV090x_SETFIELD(reg, ADC1_PON_FIELD, 0);
  if (stv090x_write_reg(state, STV090x_TSTTNR1, reg) < 0)
   goto err_unlock;

  reg = stv090x_read_reg(state, STV090x_TSTTNR2);
  STV090x_SETFIELD(reg, DISEQC1_PON_FIELD, 0);
  if (stv090x_write_reg(state, STV090x_TSTTNR2, reg) < 0)
   goto err_unlock;



  reg = stv090x_read_reg(state, STV090x_TSTTNR3);
  if (STV090x_GETFIELD(reg, ADC2_PON_FIELD) == 0)
   full_standby = 1;


  reg = stv090x_read_reg(state, STV090x_STOPCLK1);

  STV090x_SETFIELD(reg, STOP_CLKPKDT1_FIELD, 1);

  STV090x_SETFIELD(reg, STOP_CLKADCI1_FIELD, 1);


  if (full_standby)
   STV090x_SETFIELD(reg, STOP_CLKFEC_FIELD, 1);
  if (stv090x_write_reg(state, STV090x_STOPCLK1, reg) < 0)
   goto err_unlock;
  reg = stv090x_read_reg(state, STV090x_STOPCLK2);

  STV090x_SETFIELD(reg, STOP_CLKSAMP1_FIELD, 1);

  STV090x_SETFIELD(reg, STOP_CLKVIT1_FIELD, 1);


  if (full_standby)
   STV090x_SETFIELD(reg, STOP_CLKTS_FIELD, 1);
  if (stv090x_write_reg(state, STV090x_STOPCLK2, reg) < 0)
   goto err_unlock;
  break;

 case 128:

  reg = stv090x_read_reg(state, STV090x_TSTTNR3);
  STV090x_SETFIELD(reg, ADC2_PON_FIELD, 0);
  if (stv090x_write_reg(state, STV090x_TSTTNR3, reg) < 0)
   goto err_unlock;

  reg = stv090x_read_reg(state, STV090x_TSTTNR4);
  STV090x_SETFIELD(reg, DISEQC2_PON_FIELD, 0);
  if (stv090x_write_reg(state, STV090x_TSTTNR4, reg) < 0)
   goto err_unlock;



  reg = stv090x_read_reg(state, STV090x_TSTTNR1);
  if (STV090x_GETFIELD(reg, ADC1_PON_FIELD) == 0)
   full_standby = 1;


  reg = stv090x_read_reg(state, STV090x_STOPCLK1);

  STV090x_SETFIELD(reg, STOP_CLKPKDT2_FIELD, 1);

  STV090x_SETFIELD(reg, STOP_CLKADCI2_FIELD, 1);


  if (full_standby)
   STV090x_SETFIELD(reg, STOP_CLKFEC_FIELD, 1);
  if (stv090x_write_reg(state, STV090x_STOPCLK1, reg) < 0)
   goto err_unlock;
  reg = stv090x_read_reg(state, STV090x_STOPCLK2);

  STV090x_SETFIELD(reg, STOP_CLKSAMP2_FIELD, 1);

  STV090x_SETFIELD(reg, STOP_CLKVIT2_FIELD, 1);


  if (full_standby)
   STV090x_SETFIELD(reg, STOP_CLKTS_FIELD, 1);
  if (stv090x_write_reg(state, STV090x_STOPCLK2, reg) < 0)
   goto err_unlock;
  break;

 default:
  dprintk(FE_ERROR, 1, "Wrong demodulator!");
  break;
 }

 if (full_standby) {

  reg = stv090x_read_reg(state, STV090x_SYNTCTRL);
  STV090x_SETFIELD(reg, STANDBY_FIELD, 0x01);
  if (stv090x_write_reg(state, STV090x_SYNTCTRL, reg) < 0)
   goto err_unlock;
 }

 mutex_unlock(&state->internal->demod_lock);
 return 0;

err_gateoff:
 stv090x_i2c_gate_ctrl(state, 0);
 goto err;
err_unlock:
 mutex_unlock(&state->internal->demod_lock);
err:
 dprintk(FE_ERROR, 1, "I/O error");
 return -1;
}
