
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct dtv_frontend_properties {int isdbt_partial_reception; int guard_interval; int isdbt_sb_mode; int isdbt_sb_subchannel; TYPE_2__* layer; } ;
struct dib8000_state {int mode; int seg_diff_mask; int layer_b_nb_seg; int layer_c_nb_seg; int differential_constellation; int seg_mask; scalar_t__ isdbt_cfg_loaded; TYPE_1__** fe; } ;
struct TYPE_4__ {scalar_t__ modulation; int segment_count; } ;
struct TYPE_3__ {struct dtv_frontend_properties dtv_property_cache; } ;


 scalar_t__ DQPSK ;
 int ana_fe_coeff_1seg ;
 int ana_fe_coeff_3seg ;
 int dib8000_adp_fine_tune (struct dib8000_state*,int) ;
 int dib8000_get_init_prbs (struct dib8000_state*,int) ;
 int dib8000_load_ana_fe_coefs (struct dib8000_state*,int ) ;
 int dib8000_read_word (struct dib8000_state*,int) ;
 int dib8000_set_13seg_channel (struct dib8000_state*) ;
 int dib8000_set_layer (struct dib8000_state*,int,int) ;
 int dib8000_set_sb_channel (struct dib8000_state*) ;
 int dib8000_set_subchannel_prbs (struct dib8000_state*,int) ;
 int dib8000_small_fine_tune (struct dib8000_state*) ;
 int dib8000_update_ana_gain (struct dib8000_state*,int) ;
 int dib8000_write_word (struct dib8000_state*,int,int) ;
 int fft_to_mode (struct dib8000_state*) ;
 int* permu_seg ;

__attribute__((used)) static void dib8000_set_isdbt_common_channel(struct dib8000_state *state, u8 seq, u8 autosearching)
{
 u16 p_cfr_left_edge = 0, p_cfr_right_edge = 0;
 u16 tmcc_pow = 0, ana_gain = 0, tmp = 0, i = 0, nbseg_diff = 0 ;
 u16 max_constellation = DQPSK;
 int init_prbs;
 struct dtv_frontend_properties *c = &state->fe[0]->dtv_property_cache;

 if (autosearching)
  c->isdbt_partial_reception = 1;


 dib8000_write_word(state, 10, (seq << 4));


 state->mode = fft_to_mode(state);


 tmp = dib8000_read_word(state, 1);
 dib8000_write_word(state, 1, (tmp&0xfffc) | (c->guard_interval & 0x3));

 dib8000_write_word(state, 274, (dib8000_read_word(state, 274) & 0xffcf) | ((c->isdbt_partial_reception & 1) << 5) | ((c->isdbt_sb_mode & 1) << 4));


 if (c->isdbt_partial_reception) {
  state->seg_diff_mask = (c->layer[0].modulation == DQPSK) << permu_seg[0];
  for (i = 1; i < 3; i++)
   nbseg_diff += (c->layer[i].modulation == DQPSK) * c->layer[i].segment_count;
  for (i = 0; i < nbseg_diff; i++)
   state->seg_diff_mask |= 1 << permu_seg[i+1];
 } else {
  for (i = 0; i < 3; i++)
   nbseg_diff += (c->layer[i].modulation == DQPSK) * c->layer[i].segment_count;
  for (i = 0; i < nbseg_diff; i++)
   state->seg_diff_mask |= 1 << permu_seg[i];
 }

 if (state->seg_diff_mask)
  dib8000_write_word(state, 268, (dib8000_read_word(state, 268) & 0xF9FF) | 0x0200);
 else
  dib8000_write_word(state, 268, (2 << 9) | 39);

 for (i = 0; i < 3; i++)
  max_constellation = dib8000_set_layer(state, i, max_constellation);
 if (autosearching == 0) {
  state->layer_b_nb_seg = c->layer[1].segment_count;
  state->layer_c_nb_seg = c->layer[2].segment_count;
 }


 dib8000_write_word(state, 0, (state->mode << 13) | state->seg_diff_mask);

 state->differential_constellation = (state->seg_diff_mask != 0);


 ana_gain = dib8000_adp_fine_tune(state, max_constellation);


 dib8000_update_ana_gain(state, ana_gain);


 if (c->isdbt_partial_reception)
  dib8000_load_ana_fe_coefs(state, ana_fe_coeff_3seg);
 else
  dib8000_load_ana_fe_coefs(state, ana_fe_coeff_1seg);


 if (c->isdbt_sb_mode) {
  dib8000_set_sb_channel(state);
  if (c->isdbt_sb_subchannel < 14)
   init_prbs = dib8000_get_init_prbs(state, c->isdbt_sb_subchannel);
  else
   init_prbs = 0;
 } else {
  dib8000_set_13seg_channel(state);
  init_prbs = 0xfff;
 }


 dib8000_small_fine_tune(state);

 dib8000_set_subchannel_prbs(state, init_prbs);


 for (i = 0; i < 13; i++) {
  if ((((~state->seg_diff_mask) >> i) & 1) == 1) {
   p_cfr_left_edge += (1 << i) * ((i == 0) || ((((state->seg_mask & (~state->seg_diff_mask)) >> (i - 1)) & 1) == 0));
   p_cfr_right_edge += (1 << i) * ((i == 12) || ((((state->seg_mask & (~state->seg_diff_mask)) >> (i + 1)) & 1) == 0));
  }
 }
 dib8000_write_word(state, 222, p_cfr_left_edge);
 dib8000_write_word(state, 223, p_cfr_right_edge);


 dib8000_write_word(state, 189, ~state->seg_mask | state->seg_diff_mask);
 dib8000_write_word(state, 192, ~state->seg_mask | state->seg_diff_mask);
 dib8000_write_word(state, 225, ~state->seg_mask | state->seg_diff_mask);

 if (!autosearching)
  dib8000_write_word(state, 288, (~state->seg_mask | state->seg_diff_mask) & 0x1fff);
 else
  dib8000_write_word(state, 288, 0x1fff);

 dib8000_write_word(state, 211, state->seg_mask & (~state->seg_diff_mask));
 dib8000_write_word(state, 287, ~state->seg_mask | 0x1000);

 dib8000_write_word(state, 178, 32);


 for (i = 0; i < 3; i++)
  tmcc_pow += (((c->layer[i].modulation == DQPSK) * 4 + 1) * c->layer[i].segment_count) ;



 tmcc_pow *= (1 << (9-2));
 dib8000_write_word(state, 290, tmcc_pow);
 dib8000_write_word(state, 291, tmcc_pow);
 dib8000_write_word(state, 292, tmcc_pow);



 if (state->isdbt_cfg_loaded == 0)
  dib8000_write_word(state, 250, 3285);

 state->isdbt_cfg_loaded = 0;
}
