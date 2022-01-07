
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct dvb_frontend {int dummy; } ;
struct stv090x_state {int srate; scalar_t__ algo; int tuner_bw; int inversion; scalar_t__ delsys; int FecTimeout; TYPE_1__* internal; int DemodTimeout; TYPE_2__* config; int frequency; int rolloff; struct dvb_frontend frontend; } ;
typedef scalar_t__ s32 ;
typedef enum stv090x_signal_state { ____Placeholder_stv090x_signal_state } stv090x_signal_state ;
struct TYPE_4__ {scalar_t__ (* tuner_set_bbgain ) (struct dvb_frontend*,int) ;int tuner_bbgain; scalar_t__ (* tuner_set_frequency ) (struct dvb_frontend*,int ) ;scalar_t__ (* tuner_set_bandwidth ) (struct dvb_frontend*,int) ;scalar_t__ (* tuner_get_status ) (struct dvb_frontend*,int*) ;} ;
struct TYPE_3__ {int dev_ver; int mclk; } ;


 int AGC2REF ;
 int AGCIQIN0 ;
 int AGCIQIN1 ;
 int CORRELABS ;
 int CORRELMANT ;
 int DEMOD ;
 int DMDISTATE ;
 int DMDTOM ;
 int ERRCTRL1 ;
 int ERRCTRL2 ;
 int FBERCPT4 ;
 int FE_DEBUG ;
 int FE_ERROR ;
 int KREFTMG ;
 scalar_t__ MAKEWORD16 (int,int) ;
 int MANUAL_S2ROLLOFF_FIELD ;
 int MANUAL_SXROLLOFF_FIELD ;
 int PDELCTRL2 ;
 int POWERI ;
 int POWERQ ;
 int RESET_UPKO_COUNT ;
 int RST_HWARE_FIELD ;
 int SPECINV_CONTROL_FIELD ;
 scalar_t__ STV090x_BLIND_SEARCH ;
 scalar_t__ STV090x_COLD_SEARCH ;
 scalar_t__ STV090x_DVBS2 ;
 scalar_t__ STV090x_IQPOWER_THRESHOLD ;
 int STV090x_NOAGC1 ;
 int STV090x_NOCARRIER ;
 int STV090x_NODATA ;
 int STV090x_RANGEOK ;
 int STV090x_READ_DEMOD (struct stv090x_state*,int ) ;
 int STV090x_SETFIELD_Px (int,int ,int) ;
 scalar_t__ STV090x_WARM_SEARCH ;
 scalar_t__ STV090x_WRITE_DEMOD (struct stv090x_state*,int ,int) ;
 int TMGCFG ;
 int TMGCFG2 ;
 int TSCFGH ;
 int dprintk (int ,int,char*,...) ;
 int msleep (int) ;
 scalar_t__ stub1 (struct dvb_frontend*,int) ;
 scalar_t__ stub2 (struct dvb_frontend*,int ) ;
 scalar_t__ stub3 (struct dvb_frontend*,int) ;
 scalar_t__ stub4 (struct dvb_frontend*,int*) ;
 int stv090x_blind_search (struct stv090x_state*) ;
 int stv090x_car_width (int,int ) ;
 int stv090x_chk_signal (struct stv090x_state*) ;
 scalar_t__ stv090x_chk_tmg (struct stv090x_state*) ;
 scalar_t__ stv090x_delivery_search (struct stv090x_state*) ;
 int stv090x_get_coldlock (struct stv090x_state*,int ) ;
 int stv090x_get_dmdlock (struct stv090x_state*,int ) ;
 int stv090x_get_lock (struct stv090x_state*,int ,int ) ;
 int stv090x_get_lock_tmg (struct stv090x_state*) ;
 int stv090x_get_sig_params (struct stv090x_state*) ;
 scalar_t__ stv090x_i2c_gate_ctrl (struct stv090x_state*,int) ;
 int stv090x_optimize_track (struct stv090x_state*) ;
 scalar_t__ stv090x_set_max_srate (struct stv090x_state*,int ,int) ;
 scalar_t__ stv090x_set_min_srate (struct stv090x_state*,int ,int) ;
 int stv090x_set_s2rolloff (struct stv090x_state*) ;
 scalar_t__ stv090x_set_srate (struct stv090x_state*,int) ;
 scalar_t__ stv090x_start_search (struct stv090x_state*) ;
 int stv090x_sw_algo (struct stv090x_state*) ;

__attribute__((used)) static enum stv090x_signal_state stv090x_algo(struct stv090x_state *state)
{
 struct dvb_frontend *fe = &state->frontend;
 enum stv090x_signal_state signal_state = STV090x_NOCARRIER;
 u32 reg;
 s32 agc1_power, power_iq = 0, i;
 int lock = 0, low_sr = 0;

 reg = STV090x_READ_DEMOD(state, TSCFGH);
 STV090x_SETFIELD_Px(reg, RST_HWARE_FIELD, 1);
 if (STV090x_WRITE_DEMOD(state, TSCFGH, reg) < 0)
  goto err;

 if (STV090x_WRITE_DEMOD(state, DMDISTATE, 0x5c) < 0)
  goto err;

 if (state->internal->dev_ver >= 0x20) {
  if (state->srate > 5000000) {
   if (STV090x_WRITE_DEMOD(state, CORRELABS, 0x9e) < 0)
    goto err;
  } else {
   if (STV090x_WRITE_DEMOD(state, CORRELABS, 0x82) < 0)
    goto err;
  }
 }

 stv090x_get_lock_tmg(state);

 if (state->algo == STV090x_BLIND_SEARCH) {
  state->tuner_bw = 2 * 36000000;
  if (STV090x_WRITE_DEMOD(state, TMGCFG2, 0xc0) < 0)
   goto err;
  if (STV090x_WRITE_DEMOD(state, CORRELMANT, 0x70) < 0)
   goto err;
  if (stv090x_set_srate(state, 1000000) < 0)
   goto err;
 } else {

  if (STV090x_WRITE_DEMOD(state, DMDTOM, 0x20) < 0)
   goto err;
  if (STV090x_WRITE_DEMOD(state, TMGCFG, 0xd2) < 0)
   goto err;

  if (state->srate < 2000000) {

   if (STV090x_WRITE_DEMOD(state, CORRELMANT, 0x63) < 0)
    goto err;
  } else {

   if (STV090x_WRITE_DEMOD(state, CORRELMANT, 0x70) < 0)
    goto err;
  }

  if (STV090x_WRITE_DEMOD(state, AGC2REF, 0x38) < 0)
   goto err;

  if (state->internal->dev_ver >= 0x20) {
   if (STV090x_WRITE_DEMOD(state, KREFTMG, 0x5a) < 0)
    goto err;
   if (state->algo == STV090x_COLD_SEARCH)
    state->tuner_bw = (15 * (stv090x_car_width(state->srate, state->rolloff) + 10000000)) / 10;
   else if (state->algo == STV090x_WARM_SEARCH)
    state->tuner_bw = stv090x_car_width(state->srate, state->rolloff) + 10000000;
  }




  if (STV090x_WRITE_DEMOD(state, TMGCFG2, 0xc1) < 0)
   goto err;

  if (stv090x_set_srate(state, state->srate) < 0)
   goto err;

  if (stv090x_set_max_srate(state, state->internal->mclk,
       state->srate) < 0)
   goto err;
  if (stv090x_set_min_srate(state, state->internal->mclk,
       state->srate) < 0)
   goto err;

  if (state->srate >= 10000000)
   low_sr = 0;
  else
   low_sr = 1;
 }


 if (stv090x_i2c_gate_ctrl(state, 1) < 0)
  goto err;

 if (state->config->tuner_set_bbgain) {
  reg = state->config->tuner_bbgain;
  if (reg == 0)
   reg = 10;
  if (state->config->tuner_set_bbgain(fe, reg) < 0)
   goto err_gateoff;
 }

 if (state->config->tuner_set_frequency) {
  if (state->config->tuner_set_frequency(fe, state->frequency) < 0)
   goto err_gateoff;
 }

 if (state->config->tuner_set_bandwidth) {
  if (state->config->tuner_set_bandwidth(fe, state->tuner_bw) < 0)
   goto err_gateoff;
 }

 if (stv090x_i2c_gate_ctrl(state, 0) < 0)
  goto err;

 msleep(50);

 if (state->config->tuner_get_status) {
  if (stv090x_i2c_gate_ctrl(state, 1) < 0)
   goto err;
  if (state->config->tuner_get_status(fe, &reg) < 0)
   goto err_gateoff;
  if (stv090x_i2c_gate_ctrl(state, 0) < 0)
   goto err;

  if (reg)
   dprintk(FE_DEBUG, 1, "Tuner phase locked");
  else {
   dprintk(FE_DEBUG, 1, "Tuner unlocked");
   return STV090x_NOCARRIER;
  }
 }

 msleep(10);
 agc1_power = MAKEWORD16(STV090x_READ_DEMOD(state, AGCIQIN1),
    STV090x_READ_DEMOD(state, AGCIQIN0));

 if (agc1_power == 0) {



  for (i = 0; i < 5; i++) {
   power_iq += (STV090x_READ_DEMOD(state, POWERI) +
         STV090x_READ_DEMOD(state, POWERQ)) >> 1;
  }
  power_iq /= 5;
 }

 if ((agc1_power == 0) && (power_iq < STV090x_IQPOWER_THRESHOLD)) {
  dprintk(FE_ERROR, 1, "No Signal: POWER_IQ=0x%02x", power_iq);
  lock = 0;
  signal_state = STV090x_NOAGC1;
 } else {
  reg = STV090x_READ_DEMOD(state, DEMOD);
  STV090x_SETFIELD_Px(reg, SPECINV_CONTROL_FIELD, state->inversion);

  if (state->internal->dev_ver <= 0x20) {

   STV090x_SETFIELD_Px(reg, MANUAL_SXROLLOFF_FIELD, 1);
  } else {

   STV090x_SETFIELD_Px(reg, MANUAL_S2ROLLOFF_FIELD, 1);
  }
  if (STV090x_WRITE_DEMOD(state, DEMOD, reg) < 0)
   goto err;

  if (stv090x_delivery_search(state) < 0)
   goto err;

  if (state->algo != STV090x_BLIND_SEARCH) {
   if (stv090x_start_search(state) < 0)
    goto err;
  }
 }

 if (signal_state == STV090x_NOAGC1)
  return signal_state;

 if (state->algo == STV090x_BLIND_SEARCH)
  lock = stv090x_blind_search(state);

 else if (state->algo == STV090x_COLD_SEARCH)
  lock = stv090x_get_coldlock(state, state->DemodTimeout);

 else if (state->algo == STV090x_WARM_SEARCH)
  lock = stv090x_get_dmdlock(state, state->DemodTimeout);

 if ((!lock) && (state->algo == STV090x_COLD_SEARCH)) {
  if (!low_sr) {
   if (stv090x_chk_tmg(state))
    lock = stv090x_sw_algo(state);
  }
 }

 if (lock)
  signal_state = stv090x_get_sig_params(state);

 if ((lock) && (signal_state == STV090x_RANGEOK)) {
  stv090x_optimize_track(state);

  if (state->internal->dev_ver >= 0x20) {



   reg = STV090x_READ_DEMOD(state, TSCFGH);
   STV090x_SETFIELD_Px(reg, RST_HWARE_FIELD, 0);
   if (STV090x_WRITE_DEMOD(state, TSCFGH, reg) < 0)
    goto err;

   msleep(3);

   STV090x_SETFIELD_Px(reg, RST_HWARE_FIELD, 1);
   if (STV090x_WRITE_DEMOD(state, TSCFGH, reg) < 0)
    goto err;

   STV090x_SETFIELD_Px(reg, RST_HWARE_FIELD, 0);
   if (STV090x_WRITE_DEMOD(state, TSCFGH, reg) < 0)
    goto err;
  }

  lock = stv090x_get_lock(state, state->FecTimeout,
    state->FecTimeout);
  if (lock) {
   if (state->delsys == STV090x_DVBS2) {
    stv090x_set_s2rolloff(state);

    reg = STV090x_READ_DEMOD(state, PDELCTRL2);
    STV090x_SETFIELD_Px(reg, RESET_UPKO_COUNT, 1);
    if (STV090x_WRITE_DEMOD(state, PDELCTRL2, reg) < 0)
     goto err;

    reg = STV090x_READ_DEMOD(state, PDELCTRL2);
    STV090x_SETFIELD_Px(reg, RESET_UPKO_COUNT, 0);
    if (STV090x_WRITE_DEMOD(state, PDELCTRL2, reg) < 0)
     goto err;

    if (STV090x_WRITE_DEMOD(state, ERRCTRL1, 0x67) < 0)
     goto err;
   } else {
    if (STV090x_WRITE_DEMOD(state, ERRCTRL1, 0x75) < 0)
     goto err;
   }

   if (STV090x_WRITE_DEMOD(state, FBERCPT4, 0x00) < 0)
    goto err;

   if (STV090x_WRITE_DEMOD(state, ERRCTRL2, 0xc1) < 0)
    goto err;
  } else {
   signal_state = STV090x_NODATA;
   stv090x_chk_signal(state);
  }
 }
 return signal_state;

err_gateoff:
 stv090x_i2c_gate_ctrl(state, 0);
err:
 dprintk(FE_ERROR, 1, "I/O error");
 return -1;
}
