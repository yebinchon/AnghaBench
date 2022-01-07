
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_5__ {int (* get_frequency ) (struct dvb_frontend*,int*) ;} ;
struct TYPE_6__ {TYPE_1__ tuner_ops; } ;
struct dtv_frontend_properties {int frequency; } ;
struct dvb_frontend {TYPE_2__ ops; struct dib7000p_state* demodulator_priv; struct dtv_frontend_properties dtv_property_cache; } ;
struct TYPE_8__ {int (* agc_control ) (int *,int) ;} ;
struct dib7000p_state {int agc_state; int demod; TYPE_4__ cfg; TYPE_3__* current_agc; int version; } ;
typedef int s32 ;
struct TYPE_7__ {int wbd_sel; int wbd_alpha; int setup; int perform_agc_softsplit; } ;


 int BAND_OF_FREQUENCY (int) ;
 int DIB7000P_POWER_ALL ;
 int DIBX000_ADC_ON ;
 int SOC7090 ;
 int dib7000p_pll_clk_cfg (struct dib7000p_state*) ;
 int dib7000p_read_word (struct dib7000p_state*,int) ;
 int dib7000p_restart_agc (struct dib7000p_state*) ;
 int dib7000p_set_adc_state (struct dib7000p_state*,int ) ;
 int dib7000p_set_agc_config (struct dib7000p_state*,int ) ;
 int dib7000p_set_dds (struct dib7000p_state*,int) ;
 int dib7000p_set_power_mode (struct dib7000p_state*,int ) ;
 int dib7000p_update_lna (struct dib7000p_state*) ;
 int dib7000p_write_word (struct dib7000p_state*,int,int) ;
 int dprintk (char*,struct dvb_frontend*,int) ;
 int stub1 (struct dvb_frontend*,int*) ;
 int stub2 (int *,int) ;
 int stub3 (int *,int) ;

__attribute__((used)) static int dib7000p_agc_startup(struct dvb_frontend *demod)
{
 struct dtv_frontend_properties *ch = &demod->dtv_property_cache;
 struct dib7000p_state *state = demod->demodulator_priv;
 int ret = -1;
 u8 *agc_state = &state->agc_state;
 u8 agc_split;
 u16 reg;
 u32 upd_demod_gain_period = 0x1000;
 s32 frequency_offset = 0;

 switch (state->agc_state) {
 case 0:
  dib7000p_set_power_mode(state, DIB7000P_POWER_ALL);
  if (state->version == SOC7090) {
   reg = dib7000p_read_word(state, 0x79b) & 0xff00;
   dib7000p_write_word(state, 0x79a, upd_demod_gain_period & 0xFFFF);
   dib7000p_write_word(state, 0x79b, reg | (1 << 14) | ((upd_demod_gain_period >> 16) & 0xFF));


   reg = dib7000p_read_word(state, 0x780);
   dib7000p_write_word(state, 0x780, (reg | (0x3)) & (~(1 << 7)));
  } else {
   dib7000p_set_adc_state(state, DIBX000_ADC_ON);
   dib7000p_pll_clk_cfg(state);
  }

  if (dib7000p_set_agc_config(state, BAND_OF_FREQUENCY(ch->frequency / 1000)) != 0)
   return -1;

  if (demod->ops.tuner_ops.get_frequency) {
   u32 frequency_tuner;

   demod->ops.tuner_ops.get_frequency(demod, &frequency_tuner);
   frequency_offset = (s32)frequency_tuner / 1000 - ch->frequency / 1000;
  }

  if (dib7000p_set_dds(state, frequency_offset) < 0)
   return -1;

  ret = 7;
  (*agc_state)++;
  break;

 case 1:
  if (state->cfg.agc_control)
   state->cfg.agc_control(&state->demod, 1);

  dib7000p_write_word(state, 78, 32768);
  if (!state->current_agc->perform_agc_softsplit) {


   dib7000p_write_word(state, 106, (state->current_agc->wbd_sel << 13) | (state->current_agc->wbd_alpha << 9) | (1 << 8));
   (*agc_state)++;
   ret = 5;
  } else {

   (*agc_state) = 4;

   ret = 7;
  }

  dib7000p_restart_agc(state);
  break;

 case 2:
  dib7000p_write_word(state, 75, state->current_agc->setup | (1 << 4));
  dib7000p_write_word(state, 106, (state->current_agc->wbd_sel << 13) | (2 << 9) | (0 << 8));
  (*agc_state)++;
  ret = 14;
  break;

 case 3:
  agc_split = (u8) dib7000p_read_word(state, 396);
  dib7000p_write_word(state, 78, dib7000p_read_word(state, 394));

  dib7000p_write_word(state, 75, state->current_agc->setup);
  dib7000p_write_word(state, 106, (state->current_agc->wbd_sel << 13) | (state->current_agc->wbd_alpha << 9) | agc_split);

  dib7000p_restart_agc(state);

  dprintk("SPLIT %p: %hd\n", demod, agc_split);

  (*agc_state)++;
  ret = 5;
  break;

 case 4:
  ret = 7;

  if (dib7000p_update_lna(state))
   ret = 5;
  else
   (*agc_state)++;
  break;

 case 5:
  if (state->cfg.agc_control)
   state->cfg.agc_control(&state->demod, 0);
  (*agc_state)++;
  break;
 default:
  break;
 }
 return ret;
}
