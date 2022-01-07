
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dib0090_wbd_slope {int max_freq; int wbd_gain; } ;
struct dib0090_state {int current_rf; int wbd_calibration_gain; int calibrate; int wbd_offset; int current_band; struct dib0090_wbd_slope* current_wbd_table; } ;
typedef enum frontend_tune_state { ____Placeholder_frontend_tune_state } frontend_tune_state ;


 int BAND_LBAND ;
 int BAND_SBAND ;


 int EN_UHF ;
 int WBD_CAL ;
 int dib0090_get_slow_adc_val (struct dib0090_state*) ;
 int dib0090_write_reg (struct dib0090_state*,int,int) ;
 int dprintk (char*,int ) ;

__attribute__((used)) static int dib0090_wbd_calibration(struct dib0090_state *state, enum frontend_tune_state *tune_state)
{
 u8 wbd_gain;
 const struct dib0090_wbd_slope *wbd = state->current_wbd_table;

 switch (*tune_state) {
 case 129:
  while (state->current_rf / 1000 > wbd->max_freq)
   wbd++;
  if (wbd->wbd_gain != 0)
   wbd_gain = wbd->wbd_gain;
  else {
   wbd_gain = 4;




  }

  if (wbd_gain == state->wbd_calibration_gain) {
   *tune_state = 129;
   state->calibrate &= ~WBD_CAL;
   return 0;
  }

  dib0090_write_reg(state, 0x10, 0x1b81 | (1 << 10) | (wbd_gain << 13) | (1 << 3));

  dib0090_write_reg(state, 0x24, ((EN_UHF & 0x0fff) | (1 << 1)));
  *tune_state = 128;
  state->wbd_calibration_gain = wbd_gain;
  return 90;

 case 128:
  state->wbd_offset = dib0090_get_slow_adc_val(state);
  dprintk("WBD calibration offset = %d\n", state->wbd_offset);
  *tune_state = 129;
  state->calibrate &= ~WBD_CAL;
  break;

 default:
  break;
 }
 return 0;
}
