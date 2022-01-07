
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct stb0899_internal {int direction; long derot_percent; long mclk; long derot_step; int t_data; scalar_t__ status; int derot_freq; int fecrate; scalar_t__ freq; scalar_t__ t_derot; scalar_t__ t_agc2; scalar_t__ t_agc1; scalar_t__ sub_range; int master_clk; } ;
struct stb0899_params {int srate; scalar_t__ freq; } ;
struct stb0899_state {int verbose; int frontend; struct stb0899_config* config; struct stb0899_internal internal; struct stb0899_params params; } ;
struct stb0899_config {int (* tuner_get_bandwidth ) (int *,int*) ;int (* tuner_get_frequency ) (int *,scalar_t__*) ;int (* tuner_set_frequency ) (int *,scalar_t__) ;} ;
typedef size_t s32 ;
typedef enum stb0899_status { ____Placeholder_stb0899_status } stb0899_status ;


 scalar_t__ AGC1OK ;
 int BETA ;
 scalar_t__ CARRIEROK ;
 int CFD_ON ;
 scalar_t__ DATAOK ;
 int DEMAPVIT_KDIVIDER ;
 int FE_DEBUG ;
 int FRESRS ;
 scalar_t__ NOAGC1 ;
 scalar_t__ RANGEOK ;
 int STB0899_ACLC ;
 int STB0899_BCLC ;
 int STB0899_CFD ;
 int STB0899_CFRM ;
 int STB0899_DEMAPVIT ;
 int STB0899_EQON ;
 int STB0899_EQUAI1 ;






 int STB0899_GETFIELD (int ,int) ;
 int STB0899_PLPARM ;
 int STB0899_RTC ;
 int STB0899_RTF ;
 int STB0899_SETFIELD_VAL (int ,int,size_t) ;
 int STB0899_TSTRES ;
 int STB0899_VITSYNC ;
 scalar_t__ TIMINGOK ;
 int VITCURPUN ;
 int dprintk (int ,int ,int,char*,...) ;
 int msleep (scalar_t__) ;
 int next_sub_range (struct stb0899_state*) ;
 scalar_t__ stb0899_calc_derot_time (long) ;
 scalar_t__ stb0899_check_range (struct stb0899_state*) ;
 int stb0899_check_tmg (struct stb0899_state*) ;
 int stb0899_first_subrange (struct stb0899_state*) ;
 int stb0899_i2c_gate_ctrl (int *,int) ;
 int stb0899_read_reg (struct stb0899_state*,int ) ;
 int stb0899_read_regs (struct stb0899_state*,int ,int*,int) ;
 scalar_t__ stb0899_search_carrier (struct stb0899_state*) ;
 scalar_t__ stb0899_search_data (struct stb0899_state*) ;
 int stb0899_search_tmg (struct stb0899_state*) ;
 int stb0899_set_srate (struct stb0899_state*,int ,int) ;
 int stb0899_write_reg (struct stb0899_state*,int ,int) ;
 int stb0899_write_regs (struct stb0899_state*,int ,int*,int) ;
 int stub1 (int *,scalar_t__) ;
 int stub2 (int *,scalar_t__*) ;
 int stub3 (int *,int*) ;

enum stb0899_status stb0899_dvbs_algo(struct stb0899_state *state)
{
 struct stb0899_params *params = &state->params;
 struct stb0899_internal *internal = &state->internal;
 struct stb0899_config *config = state->config;

 u8 bclc, reg;
 u8 cfr[2];
 u8 eq_const[10];
 s32 clnI = 3;
 u32 bandwidth = 0;


 s32 betaTab[5][4] = {

  { 37, 34, 32, 31 },
  { 37, 35, 33, 31 },
  { 37, 35, 33, 31 },
  { 37, 36, 33, 32 },
  { 37, 36, 33, 32 }
 };

 internal->direction = 1;

 stb0899_set_srate(state, internal->master_clk, params->srate);

 if (params->srate <= 5000000) {
  stb0899_write_reg(state, STB0899_ACLC, 0x89);
  bclc = stb0899_read_reg(state, STB0899_BCLC);
  STB0899_SETFIELD_VAL(BETA, bclc, 0x1c);
  stb0899_write_reg(state, STB0899_BCLC, bclc);
  clnI = 0;
 } else if (params->srate <= 15000000) {
  stb0899_write_reg(state, STB0899_ACLC, 0xc9);
  bclc = stb0899_read_reg(state, STB0899_BCLC);
  STB0899_SETFIELD_VAL(BETA, bclc, 0x22);
  stb0899_write_reg(state, STB0899_BCLC, bclc);
  clnI = 1;
 } else if(params->srate <= 25000000) {
  stb0899_write_reg(state, STB0899_ACLC, 0x89);
  bclc = stb0899_read_reg(state, STB0899_BCLC);
  STB0899_SETFIELD_VAL(BETA, bclc, 0x27);
  stb0899_write_reg(state, STB0899_BCLC, bclc);
  clnI = 2;
 } else {
  stb0899_write_reg(state, STB0899_ACLC, 0xc8);
  bclc = stb0899_read_reg(state, STB0899_BCLC);
  STB0899_SETFIELD_VAL(BETA, bclc, 0x29);
  stb0899_write_reg(state, STB0899_BCLC, bclc);
  clnI = 3;
 }

 dprintk(state->verbose, FE_DEBUG, 1, "Set the timing loop to acquisition");

 stb0899_write_reg(state, STB0899_RTC, 0x46);
 stb0899_write_reg(state, STB0899_CFD, 0xee);







 dprintk(state->verbose, FE_DEBUG, 1, "Derot Percent=%d Srate=%d mclk=%d",
  internal->derot_percent, params->srate, internal->mclk);


 internal->derot_step = internal->derot_percent * (params->srate / 1000L) / internal->mclk;
 internal->t_derot = stb0899_calc_derot_time(params->srate);
 internal->t_data = 500;

 dprintk(state->verbose, FE_DEBUG, 1, "RESET stream merger");

 reg = stb0899_read_reg(state, STB0899_TSTRES);
 STB0899_SETFIELD_VAL(FRESRS, reg, 1);
 stb0899_write_reg(state, STB0899_TSTRES, reg);





 reg = stb0899_read_reg(state, STB0899_DEMAPVIT);
 STB0899_SETFIELD_VAL(DEMAPVIT_KDIVIDER, reg, 60);
 stb0899_write_reg(state, STB0899_DEMAPVIT, reg);

 stb0899_write_reg(state, STB0899_EQON, 0x01);
 stb0899_write_reg(state, STB0899_VITSYNC, 0x19);

 stb0899_first_subrange(state);
 do {

  cfr[0] = cfr[1] = 0;
  stb0899_write_regs(state, STB0899_CFRM, cfr, 2);

  stb0899_write_reg(state, STB0899_RTF, 0);
  reg = stb0899_read_reg(state, STB0899_CFD);
  STB0899_SETFIELD_VAL(CFD_ON, reg, 1);
  stb0899_write_reg(state, STB0899_CFD, reg);

  internal->derot_freq = 0;
  internal->status = NOAGC1;


  stb0899_i2c_gate_ctrl(&state->frontend, 1);


  dprintk(state->verbose, FE_DEBUG, 1, "Tuner set frequency");
  if (state->config->tuner_set_frequency)
   state->config->tuner_set_frequency(&state->frontend, internal->freq);

  if (state->config->tuner_get_frequency)
   state->config->tuner_get_frequency(&state->frontend, &internal->freq);

  msleep(internal->t_agc1 + internal->t_agc2 + internal->t_derot);
  dprintk(state->verbose, FE_DEBUG, 1, "current derot freq=%d", internal->derot_freq);
  internal->status = AGC1OK;


  if (config->tuner_get_bandwidth)
   config->tuner_get_bandwidth(&state->frontend, &bandwidth);


  stb0899_i2c_gate_ctrl(&state->frontend, 0);

  if (params->srate <= bandwidth / 2)
   stb0899_search_tmg(state);
  else
   stb0899_check_tmg(state);

  if (internal->status == TIMINGOK) {
   dprintk(state->verbose, FE_DEBUG, 1,
    "TIMING OK ! Derot freq=%d, mclk=%d",
    internal->derot_freq, internal->mclk);

   if (stb0899_search_carrier(state) == CARRIEROK) {
    dprintk(state->verbose, FE_DEBUG, 1,
     "CARRIER OK ! Derot freq=%d, mclk=%d",
     internal->derot_freq, internal->mclk);

    if (stb0899_search_data(state) == DATAOK) {
     dprintk(state->verbose, FE_DEBUG, 1,
      "DATA OK ! Derot freq=%d, mclk=%d",
      internal->derot_freq, internal->mclk);

     if (stb0899_check_range(state) == RANGEOK) {
      dprintk(state->verbose, FE_DEBUG, 1,
       "RANGE OK ! derot freq=%d, mclk=%d",
       internal->derot_freq, internal->mclk);

      internal->freq = params->freq - ((internal->derot_freq * internal->mclk) / 1000);
      reg = stb0899_read_reg(state, STB0899_PLPARM);
      internal->fecrate = STB0899_GETFIELD(VITCURPUN, reg);
      dprintk(state->verbose, FE_DEBUG, 1,
       "freq=%d, internal resultant freq=%d",
       params->freq, internal->freq);

      dprintk(state->verbose, FE_DEBUG, 1,
       "internal puncture rate=%d",
       internal->fecrate);
     }
    }
   }
  }
  if (internal->status != RANGEOK)
   next_sub_range(state);

 } while (internal->sub_range && internal->status != RANGEOK);


 stb0899_write_reg(state, STB0899_RTC, 0x33);
 stb0899_write_reg(state, STB0899_CFD, 0xf7);

 if (internal->status == RANGEOK) {
  dprintk(state->verbose, FE_DEBUG, 1, "Locked & Range OK !");
  stb0899_write_reg(state, STB0899_EQON, 0x41);
  stb0899_write_reg(state, STB0899_VITSYNC, 0x39);





  reg = stb0899_read_reg(state, STB0899_BCLC);
  switch (internal->fecrate) {
  case 133:
   stb0899_write_reg(state, STB0899_DEMAPVIT, 0x1a);
   STB0899_SETFIELD_VAL(BETA, reg, betaTab[0][clnI]);
   stb0899_write_reg(state, STB0899_BCLC, reg);
   break;
  case 132:
   stb0899_write_reg(state, STB0899_DEMAPVIT, 44);
   STB0899_SETFIELD_VAL(BETA, reg, betaTab[1][clnI]);
   stb0899_write_reg(state, STB0899_BCLC, reg);
   break;
  case 131:
   stb0899_write_reg(state, STB0899_DEMAPVIT, 60);
   STB0899_SETFIELD_VAL(BETA, reg, betaTab[2][clnI]);
   stb0899_write_reg(state, STB0899_BCLC, reg);
   break;
  case 130:
   stb0899_write_reg(state, STB0899_DEMAPVIT, 75);
   STB0899_SETFIELD_VAL(BETA, reg, betaTab[3][clnI]);
   stb0899_write_reg(state, STB0899_BCLC, reg);
   break;
  case 129:
   stb0899_write_reg(state, STB0899_DEMAPVIT, 88);
   stb0899_write_reg(state, STB0899_ACLC, 0x88);
   stb0899_write_reg(state, STB0899_BCLC, 0x9a);
   break;
  case 128:
   stb0899_write_reg(state, STB0899_DEMAPVIT, 94);
   STB0899_SETFIELD_VAL(BETA, reg, betaTab[4][clnI]);
   stb0899_write_reg(state, STB0899_BCLC, reg);
   break;
  default:
   dprintk(state->verbose, FE_DEBUG, 1, "Unsupported Puncture Rate");
   break;
  }

  reg = stb0899_read_reg(state, STB0899_TSTRES);
  STB0899_SETFIELD_VAL(FRESRS, reg, 0);
  stb0899_write_reg(state, STB0899_TSTRES, reg);


  reg = stb0899_read_reg(state, STB0899_CFD);
  STB0899_SETFIELD_VAL(CFD_ON, reg, 0);
  stb0899_write_reg(state, STB0899_CFD, reg);

  stb0899_read_regs(state, STB0899_EQUAI1, eq_const, 10);
 }

 return internal->status;
}
