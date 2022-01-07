
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct dvb_frontend {struct dib0090_state* tuner_priv; } ;
struct TYPE_9__ {scalar_t__ p1g; } ;
struct dib0090_state {int tune_state; scalar_t__ current_band; int rf_gain_limit; int* rf_ramp; int current_gain; int* bb_ramp; scalar_t__ wbd_target; int rf_lt_def; scalar_t__ agc_freeze; TYPE_3__* fe; scalar_t__ agc_step; TYPE_5__* config; TYPE_4__ identity; int current_rf; } ;
typedef int s32 ;
typedef scalar_t__ s16 ;
typedef enum frontend_tune_state { ____Placeholder_frontend_tune_state } frontend_tune_state ;
struct TYPE_10__ {int (* get_adc_power ) (struct dvb_frontend*) ;} ;
struct TYPE_7__ {scalar_t__ delivery_system; scalar_t__ modulation; TYPE_1__* layer; } ;
struct TYPE_8__ {TYPE_2__ dtv_property_cache; } ;
struct TYPE_6__ {scalar_t__ segment_count; scalar_t__ modulation; } ;


 scalar_t__ ADC_TARGET ;
 scalar_t__ BAND_CBAND ;
 scalar_t__ BAND_SBAND ;
 scalar_t__ BAND_VHF ;
 int CT_AGC_START ;
 int CT_AGC_STEP_0 ;
 int CT_AGC_STEP_1 ;
 int CT_AGC_STOP ;
 int GAIN_ALPHA ;
 scalar_t__ QAM_16 ;
 scalar_t__ QAM_64 ;
 scalar_t__ STANDARD_DAB ;
 scalar_t__ STANDARD_DVBT ;
 scalar_t__ SYS_ISDBT ;
 int WBD_ALPHA ;
 int abs (scalar_t__) ;
 int bb_ramp_boost ;
 int bb_ramp_pwm_normal ;
 int bb_ramp_pwm_normal_socs ;
 int dib0090_gain_apply (struct dib0090_state*,scalar_t__,scalar_t__,int) ;
 scalar_t__ dib0090_get_slow_adc_val (struct dib0090_state*) ;
 int dib0090_set_bbramp (struct dib0090_state*,int ) ;
 int dib0090_set_rframp (struct dib0090_state*,int ) ;
 int dib0090_wbd_target (struct dib0090_state*,int ) ;
 scalar_t__ dib0090_wbd_to_db (struct dib0090_state*,scalar_t__) ;
 int dib0090_write_reg (struct dib0090_state*,int,int) ;
 int dprintk (char*,int,int,int,int,int,int,int,int) ;
 int rf_ramp_pwm_cband ;
 int rf_ramp_pwm_cband_7090p ;
 int rf_ramp_pwm_uhf ;
 int rf_ramp_pwm_vhf ;
 int rf_ramp_sband ;
 int stub1 (struct dvb_frontend*) ;

int dib0090_gain_control(struct dvb_frontend *fe)
{
 struct dib0090_state *state = fe->tuner_priv;
 enum frontend_tune_state *tune_state = &state->tune_state;
 int ret = 10;

 u16 wbd_val = 0;
 u8 apply_gain_immediatly = 1;
 s16 wbd_error = 0, adc_error = 0;

 if (*tune_state == CT_AGC_START) {
  state->agc_freeze = 0;
  dib0090_write_reg(state, 0x04, 0x0);
  if ((state->current_band == BAND_CBAND || state->current_band == BAND_VHF) && state->identity.p1g) {
   dib0090_set_rframp(state, rf_ramp_pwm_cband_7090p);
   dib0090_set_bbramp(state, bb_ramp_pwm_normal_socs);
  } else {
   dib0090_set_rframp(state, rf_ramp_pwm_uhf);
   dib0090_set_bbramp(state, bb_ramp_pwm_normal);
  }

  dib0090_write_reg(state, 0x32, 0);
  dib0090_write_reg(state, 0x39, 0);

  dib0090_wbd_target(state, state->current_rf);

  state->rf_gain_limit = state->rf_ramp[0] << WBD_ALPHA;
  state->current_gain = ((state->rf_ramp[0] + state->bb_ramp[0]) / 2) << GAIN_ALPHA;

  *tune_state = CT_AGC_STEP_0;
 } else if (!state->agc_freeze) {
  s16 wbd = 0, i, cnt;

  int adc;
  wbd_val = dib0090_get_slow_adc_val(state);

  if (*tune_state == CT_AGC_STEP_0)
   cnt = 5;
  else
   cnt = 1;

  for (i = 0; i < cnt; i++) {
   wbd_val = dib0090_get_slow_adc_val(state);
   wbd += dib0090_wbd_to_db(state, wbd_val);
  }
  wbd /= cnt;
  wbd_error = state->wbd_target - wbd;

  if (*tune_state == CT_AGC_STEP_0) {
   if (wbd_error < 0 && state->rf_gain_limit > 0 && !state->identity.p1g) {
   } else {
    state->agc_step = 0;
    *tune_state = CT_AGC_STEP_1;
   }
  } else {

   adc = state->config->get_adc_power(fe);
   adc = (adc * ((s32) 355774) + (((s32) 1) << 20)) >> 21;

   adc_error = (s16) (((s32) ADC_TARGET) - adc);
   if (*tune_state == CT_AGC_STEP_1) {
    if (abs(adc_error) < 50 || state->agc_step++ > 5) {







     {
      dib0090_write_reg(state, 0x02, (1 << 15) | (3 << 11) | (6 << 6) | (32));
      dib0090_write_reg(state, 0x04, 0x01);
     }

     *tune_state = CT_AGC_STOP;
    }
   } else {

    ret = 100;
    apply_gain_immediatly = 0;
   }
  }






 }


 if (!state->agc_freeze)
  dib0090_gain_apply(state, adc_error, wbd_error, apply_gain_immediatly);
 return ret;
}
