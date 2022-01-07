
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dtv_frontend_properties {scalar_t__ hierarchy; void* code_rate_LP; void* code_rate_HP; int modulation; int guard_interval; int transmission_mode; } ;
struct dvb_frontend {struct dib3000mc_state* demodulator_priv; struct dtv_frontend_properties dtv_property_cache; } ;
struct dib3000mc_state {int dummy; } ;


 void* FEC_2_3 ;
 int GUARD_INTERVAL_1_32 ;
 int QAM_64 ;
 int TRANSMISSION_MODE_8K ;
 int dib3000mc_read_word (struct dib3000mc_state*,int) ;
 int dib3000mc_set_channel_cfg (struct dib3000mc_state*,struct dtv_frontend_properties*,int) ;
 int dib3000mc_write_word (struct dib3000mc_state*,int ,int) ;

__attribute__((used)) static int dib3000mc_autosearch_start(struct dvb_frontend *demod)
{
 struct dtv_frontend_properties *chan = &demod->dtv_property_cache;
 struct dib3000mc_state *state = demod->demodulator_priv;
 u16 reg;

 struct dtv_frontend_properties schan;

 schan = *chan;




 schan.transmission_mode = TRANSMISSION_MODE_8K;
 schan.guard_interval = GUARD_INTERVAL_1_32;
 schan.modulation = QAM_64;
 schan.code_rate_HP = FEC_2_3;
 schan.code_rate_LP = FEC_2_3;
 schan.hierarchy = 0;

 dib3000mc_set_channel_cfg(state, &schan, 11);

 reg = dib3000mc_read_word(state, 0);
 dib3000mc_write_word(state, 0, reg | (1 << 8));
 dib3000mc_read_word(state, 511);
 dib3000mc_write_word(state, 0, reg);

 return 0;
}
