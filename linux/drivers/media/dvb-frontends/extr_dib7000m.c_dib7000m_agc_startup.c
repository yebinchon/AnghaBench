
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct dtv_frontend_properties {int frequency; } ;
struct dvb_frontend {struct dib7000m_state* demodulator_priv; struct dtv_frontend_properties dtv_property_cache; } ;
struct TYPE_4__ {int (* agc_control ) (int *,int) ;} ;
struct dib7000m_state {int agc_state; int demod; TYPE_2__ cfg; TYPE_1__* current_agc; } ;
struct TYPE_3__ {int wbd_alpha; int perform_agc_softsplit; } ;


 int BAND_OF_FREQUENCY (int) ;
 int DIB7000M_POWER_INTERF_ANALOG_AGC ;
 int DIBX000_ADC_ON ;
 int dib7000m_agc_soft_split (struct dib7000m_state*) ;
 int dib7000m_read_word (struct dib7000m_state*,int) ;
 int dib7000m_restart_agc (struct dib7000m_state*) ;
 int dib7000m_set_adc_state (struct dib7000m_state*,int ) ;
 int dib7000m_set_agc_config (struct dib7000m_state*,int ) ;
 int dib7000m_set_power_mode (struct dib7000m_state*,int ) ;
 int dib7000m_update_lna (struct dib7000m_state*) ;
 int dib7000m_write_word (struct dib7000m_state*,int,int) ;
 int dprintk (char*,struct dvb_frontend*,int) ;
 int stub1 (int *,int) ;
 int stub2 (int *,int) ;

__attribute__((used)) static int dib7000m_agc_startup(struct dvb_frontend *demod)
{
 struct dtv_frontend_properties *ch = &demod->dtv_property_cache;
 struct dib7000m_state *state = demod->demodulator_priv;
 u16 cfg_72 = dib7000m_read_word(state, 72);
 int ret = -1;
 u8 *agc_state = &state->agc_state;
 u8 agc_split;

 switch (state->agc_state) {
  case 0:

   dib7000m_set_power_mode(state, DIB7000M_POWER_INTERF_ANALOG_AGC);
   dib7000m_set_adc_state(state, DIBX000_ADC_ON);

   if (dib7000m_set_agc_config(state, BAND_OF_FREQUENCY(ch->frequency/1000)) != 0)
    return -1;

   ret = 7;
   (*agc_state)++;
   break;

  case 1:

   if (state->cfg.agc_control)
    state->cfg.agc_control(&state->demod, 1);

   dib7000m_write_word(state, 75, 32768);
   if (!state->current_agc->perform_agc_softsplit) {

    dib7000m_write_word(state, 103, 1 << 8);
    (*agc_state)++;
    ret = 5;
   } else {

    (*agc_state) = 4;

    ret = 7;
   }

   dib7000m_restart_agc(state);
   break;

  case 2:
   dib7000m_write_word(state, 72, cfg_72 | (1 << 4));
   dib7000m_write_word(state, 103, 2 << 9);
   (*agc_state)++;
   ret = 14;
   break;

 case 3:
   agc_split = (u8)dib7000m_read_word(state, 392);
   dib7000m_write_word(state, 75, dib7000m_read_word(state, 390));

   dib7000m_write_word(state, 72, cfg_72 & ~(1 << 4));
   dib7000m_write_word(state, 103, (state->current_agc->wbd_alpha << 9) | agc_split);

   dib7000m_restart_agc(state);

   dprintk("SPLIT %p: %hd\n", demod, agc_split);

   (*agc_state)++;
   ret = 5;
   break;

  case 4:

   ret = 7;

   if (dib7000m_update_lna(state))

    ret = 5;
   else
    (*agc_state)++;
   break;

  case 5:
   dib7000m_agc_soft_split(state);

   if (state->cfg.agc_control)
    state->cfg.agc_control(&state->demod, 0);

   (*agc_state)++;
   break;

  default:
   break;
 }
 return ret;
}
