
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct stv090x_state {scalar_t__ device; TYPE_1__* internal; struct stv090x_config* config; } ;
struct stv090x_reg {int data; int addr; } ;
struct stv090x_config {int clk_mode; scalar_t__ adc1_range; scalar_t__ adc2_range; int repeater_level; } ;
struct dvb_frontend {struct stv090x_state* demodulator_priv; } ;
struct TYPE_2__ {int dev_ver; } ;


 int ADC1_INMODE_FIELD ;
 int ADC2_INMODE_FIELD ;
 unsigned long ARRAY_SIZE (struct stv090x_reg*) ;
 int ENARPT_LEVEL_FIELD ;
 int FE_DEBUG ;
 int FE_ERROR ;
 scalar_t__ STV0900 ;
 scalar_t__ STV0903 ;
 scalar_t__ STV090x_ADC_1Vpp ;
 int STV090x_I2CCFG ;
 int STV090x_MID ;
 int STV090x_NCOARSE ;
 int STV090x_P1_DMDISTATE ;
 int STV090x_P1_I2CRPT ;
 int STV090x_P1_TNRCFG ;
 int STV090x_P2_DMDISTATE ;
 int STV090x_P2_I2CRPT ;
 int STV090x_P2_TNRCFG ;
 int STV090x_SETFIELD (int,int ,int) ;
 int STV090x_SETFIELD_Px (int,int ,int ) ;
 int STV090x_SYNTCTRL ;
 int STV090x_TSGENERAL ;
 int STV090x_TSTRES0 ;
 int STV090x_TSTTNR1 ;
 int STV090x_TSTTNR3 ;
 int dprintk (int ,int,char*,...) ;
 int msleep (int) ;
 struct stv090x_reg* stv0900_cut20_val ;
 struct stv090x_reg* stv0900_initval ;
 struct stv090x_reg* stv0903_cut20_val ;
 struct stv090x_reg* stv0903_initval ;
 void* stv090x_read_reg (struct stv090x_state*,int ) ;
 scalar_t__ stv090x_write_reg (struct stv090x_state*,int ,int) ;

__attribute__((used)) static int stv090x_setup(struct dvb_frontend *fe)
{
 struct stv090x_state *state = fe->demodulator_priv;
 const struct stv090x_config *config = state->config;
 const struct stv090x_reg *stv090x_initval = ((void*)0);
 const struct stv090x_reg *stv090x_cut20_val = ((void*)0);
 unsigned long t1_size = 0, t2_size = 0;
 u32 reg = 0;

 int i;

 if (state->device == STV0900) {
  dprintk(FE_DEBUG, 1, "Initializing STV0900");
  stv090x_initval = stv0900_initval;
  t1_size = ARRAY_SIZE(stv0900_initval);
  stv090x_cut20_val = stv0900_cut20_val;
  t2_size = ARRAY_SIZE(stv0900_cut20_val);
 } else if (state->device == STV0903) {
  dprintk(FE_DEBUG, 1, "Initializing STV0903");
  stv090x_initval = stv0903_initval;
  t1_size = ARRAY_SIZE(stv0903_initval);
  stv090x_cut20_val = stv0903_cut20_val;
  t2_size = ARRAY_SIZE(stv0903_cut20_val);
 }




 if (stv090x_write_reg(state, STV090x_P1_DMDISTATE, 0x5c) < 0)
  goto err;
 if (state->device == STV0900)
  if (stv090x_write_reg(state, STV090x_P2_DMDISTATE, 0x5c) < 0)
   goto err;

 msleep(5);


 if (stv090x_write_reg(state, STV090x_P1_TNRCFG, 0x6c) < 0)
  goto err;
 if (state->device == STV0900)
  if (stv090x_write_reg(state, STV090x_P2_TNRCFG, 0x6c) < 0)
   goto err;


 STV090x_SETFIELD_Px(reg, ENARPT_LEVEL_FIELD, config->repeater_level);
 if (stv090x_write_reg(state, STV090x_P1_I2CRPT, reg) < 0)
  goto err;
 if (state->device == STV0900)
  if (stv090x_write_reg(state, STV090x_P2_I2CRPT, reg) < 0)
   goto err;

 if (stv090x_write_reg(state, STV090x_NCOARSE, 0x13) < 0)
  goto err;
 msleep(5);
 if (stv090x_write_reg(state, STV090x_I2CCFG, 0x08) < 0)
  goto err;
 if (stv090x_write_reg(state, STV090x_SYNTCTRL, 0x20 | config->clk_mode) < 0)
  goto err;
 msleep(5);


 dprintk(FE_DEBUG, 1, "Setting up initial values");
 for (i = 0; i < t1_size; i++) {
  if (stv090x_write_reg(state, stv090x_initval[i].addr, stv090x_initval[i].data) < 0)
   goto err;
 }

 state->internal->dev_ver = stv090x_read_reg(state, STV090x_MID);
 if (state->internal->dev_ver >= 0x20) {
  if (stv090x_write_reg(state, STV090x_TSGENERAL, 0x0c) < 0)
   goto err;


  dprintk(FE_DEBUG, 1, "Setting up Cut 2.0 initial values");
  for (i = 0; i < t2_size; i++) {
   if (stv090x_write_reg(state, stv090x_cut20_val[i].addr, stv090x_cut20_val[i].data) < 0)
    goto err;
  }

 } else if (state->internal->dev_ver < 0x20) {
  dprintk(FE_ERROR, 1, "ERROR: Unsupported Cut: 0x%02x!",
   state->internal->dev_ver);

  goto err;
 } else if (state->internal->dev_ver > 0x30) {

  dprintk(FE_ERROR, 1, "INFO: Cut: 0x%02x probably incomplete support!",
   state->internal->dev_ver);
 }


 reg = stv090x_read_reg(state, STV090x_TSTTNR1);
 STV090x_SETFIELD(reg, ADC1_INMODE_FIELD,
  (config->adc1_range == STV090x_ADC_1Vpp) ? 0 : 1);
 if (stv090x_write_reg(state, STV090x_TSTTNR1, reg) < 0)
  goto err;


 reg = stv090x_read_reg(state, STV090x_TSTTNR3);
 STV090x_SETFIELD(reg, ADC2_INMODE_FIELD,
  (config->adc2_range == STV090x_ADC_1Vpp) ? 0 : 1);
 if (stv090x_write_reg(state, STV090x_TSTTNR3, reg) < 0)
  goto err;

 if (stv090x_write_reg(state, STV090x_TSTRES0, 0x80) < 0)
  goto err;
 if (stv090x_write_reg(state, STV090x_TSTRES0, 0x00) < 0)
  goto err;

 return 0;
err:
 dprintk(FE_ERROR, 1, "I/O error");
 return -1;
}
