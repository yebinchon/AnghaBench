
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct dtv_frontend_properties {int bandwidth_hz; scalar_t__ hierarchy; int code_rate_LP; int code_rate_HP; int transmission_mode; int guard_interval; int modulation; } ;
struct dvb_frontend {struct dib7000p_state* demodulator_priv; struct dtv_frontend_properties dtv_property_cache; } ;
struct dib7000p_state {scalar_t__ version; } ;


 int BANDWIDTH_TO_KHZ (int ) ;
 int FEC_2_3 ;
 int FEC_3_4 ;
 int GUARD_INTERVAL_1_32 ;
 int QAM_64 ;
 scalar_t__ SOC7090 ;
 int TRANSMISSION_MODE_8K ;
 int dib7000p_get_internal_freq (struct dib7000p_state*) ;
 int dib7000p_read_word (struct dib7000p_state*,int) ;
 int dib7000p_set_channel (struct dib7000p_state*,struct dtv_frontend_properties*,int) ;
 int dib7000p_write_word (struct dib7000p_state*,int,int ) ;

__attribute__((used)) static int dib7000p_autosearch_start(struct dvb_frontend *demod)
{
 struct dtv_frontend_properties *ch = &demod->dtv_property_cache;
 struct dib7000p_state *state = demod->demodulator_priv;
 struct dtv_frontend_properties schan;
 u32 value, factor;
 u32 internal = dib7000p_get_internal_freq(state);

 schan = *ch;
 schan.modulation = QAM_64;
 schan.guard_interval = GUARD_INTERVAL_1_32;
 schan.transmission_mode = TRANSMISSION_MODE_8K;
 schan.code_rate_HP = FEC_2_3;
 schan.code_rate_LP = FEC_3_4;
 schan.hierarchy = 0;

 dib7000p_set_channel(state, &schan, 7);

 factor = BANDWIDTH_TO_KHZ(ch->bandwidth_hz);
 if (factor >= 5000) {
  if (state->version == SOC7090)
   factor = 2;
  else
   factor = 1;
 } else
  factor = 6;

 value = 30 * internal * factor;
 dib7000p_write_word(state, 6, (u16) ((value >> 16) & 0xffff));
 dib7000p_write_word(state, 7, (u16) (value & 0xffff));
 value = 100 * internal * factor;
 dib7000p_write_word(state, 8, (u16) ((value >> 16) & 0xffff));
 dib7000p_write_word(state, 9, (u16) (value & 0xffff));
 value = 500 * internal * factor;
 dib7000p_write_word(state, 10, (u16) ((value >> 16) & 0xffff));
 dib7000p_write_word(state, 11, (u16) (value & 0xffff));

 value = dib7000p_read_word(state, 0);
 dib7000p_write_word(state, 0, (u16) ((1 << 9) | value));
 dib7000p_read_word(state, 1284);
 dib7000p_write_word(state, 0, (u16) value);

 return 0;
}
