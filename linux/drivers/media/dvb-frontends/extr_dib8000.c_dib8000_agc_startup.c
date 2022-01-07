
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {int frequency; } ;
struct dvb_frontend {TYPE_1__ dtv_property_cache; struct dib8000_state* demodulator_priv; } ;
struct TYPE_4__ {int (* agc_control ) (struct dvb_frontend*,int) ;} ;
struct dib8000_state {int tune_state; int revision; TYPE_2__ cfg; int status; } ;
typedef enum frontend_tune_state { ____Placeholder_frontend_tune_state } frontend_tune_state ;


 scalar_t__ BAND_OF_FREQUENCY (int) ;




 int CT_AGC_STOP ;
 int DIB8000_POWER_ALL ;
 int DIBX000_ADC_ON ;
 int FE_STATUS_TUNE_FAILED ;
 int dib8000_agc_soft_split (struct dib8000_state*) ;
 int dib8000_read_word (struct dib8000_state*,int) ;
 int dib8000_restart_agc (struct dib8000_state*) ;
 int dib8000_set_adc_state (struct dib8000_state*,int ) ;
 int dib8000_set_agc_config (struct dib8000_state*,unsigned char) ;
 int dib8000_set_power_mode (struct dib8000_state*,int ) ;
 int dib8000_update_lna (struct dib8000_state*) ;
 int dib8000_write_word (struct dib8000_state*,int,int) ;
 int stub1 (struct dvb_frontend*,int) ;
 int stub2 (struct dvb_frontend*,int) ;

__attribute__((used)) static int dib8000_agc_startup(struct dvb_frontend *fe)
{
 struct dib8000_state *state = fe->demodulator_priv;
 enum frontend_tune_state *tune_state = &state->tune_state;
 int ret = 0;
 u16 reg;
 u32 upd_demod_gain_period = 0x8000;

 switch (*tune_state) {
 case 131:


  if (state->revision != 0x8090)
   dib8000_set_adc_state(state, DIBX000_ADC_ON);
  else {
   dib8000_set_power_mode(state, DIB8000_POWER_ALL);

   reg = dib8000_read_word(state, 1947)&0xff00;
   dib8000_write_word(state, 1946,
     upd_demod_gain_period & 0xFFFF);

   dib8000_write_word(state, 1947, reg | (1<<14) |
     ((upd_demod_gain_period >> 16) & 0xFF));


   reg = dib8000_read_word(state, 1920);
   dib8000_write_word(state, 1920, (reg | 0x3) &
     (~(1 << 7)));
  }

  if (dib8000_set_agc_config(state, (unsigned char)(BAND_OF_FREQUENCY(fe->dtv_property_cache.frequency / 1000))) != 0) {
   *tune_state = CT_AGC_STOP;
   state->status = FE_STATUS_TUNE_FAILED;
   break;
  }

  ret = 70;
  *tune_state = 130;
  break;

 case 130:

  if (state->cfg.agc_control)
   state->cfg.agc_control(fe, 1);

  dib8000_restart_agc(state);


  ret = 50;
  *tune_state = 129;
  break;

 case 129:

  ret = 70;

  if (dib8000_update_lna(state))

   ret = 50;
  else
   *tune_state = 128;
  break;

 case 128:
  dib8000_agc_soft_split(state);

  if (state->cfg.agc_control)
   state->cfg.agc_control(fe, 0);

  *tune_state = CT_AGC_STOP;
  break;
 default:
  ret = dib8000_agc_soft_split(state);
  break;
 }
 return ret;

}
