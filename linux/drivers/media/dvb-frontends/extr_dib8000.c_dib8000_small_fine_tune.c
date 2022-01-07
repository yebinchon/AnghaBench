
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct dtv_frontend_properties {int isdbt_sb_mode; int transmission_mode; TYPE_2__* layer; int isdbt_partial_reception; } ;
struct dib8000_state {int const seg_diff_mask; int const seg_mask; TYPE_1__** fe; } ;
typedef int s16 ;
struct TYPE_4__ {int modulation; } ;
struct TYPE_3__ {struct dtv_frontend_properties dtv_property_cache; } ;


 int DQPSK ;




 int* coeff_2k_sb_1seg ;
 int* coeff_2k_sb_1seg_dqpsk ;
 int* coeff_2k_sb_3seg ;
 int* coeff_2k_sb_3seg_0dqpsk ;
 int* coeff_2k_sb_3seg_0dqpsk_1dqpsk ;
 int* coeff_2k_sb_3seg_1dqpsk ;
 int* coeff_4k_sb_1seg ;
 int* coeff_4k_sb_1seg_dqpsk ;
 int* coeff_4k_sb_3seg ;
 int* coeff_4k_sb_3seg_0dqpsk ;
 int* coeff_4k_sb_3seg_0dqpsk_1dqpsk ;
 int* coeff_4k_sb_3seg_1dqpsk ;
 int* coeff_8k_sb_1seg ;
 int* coeff_8k_sb_1seg_dqpsk ;
 int* coeff_8k_sb_3seg ;
 int* coeff_8k_sb_3seg_0dqpsk ;
 int* coeff_8k_sb_3seg_0dqpsk_1dqpsk ;
 int* coeff_8k_sb_3seg_1dqpsk ;
 int dib8000_write_word (struct dib8000_state*,int,int const) ;

__attribute__((used)) static void dib8000_small_fine_tune(struct dib8000_state *state)
{
 u16 i;
 const s16 *ncoeff;
 struct dtv_frontend_properties *c = &state->fe[0]->dtv_property_cache;

 dib8000_write_word(state, 352, state->seg_diff_mask);
 dib8000_write_word(state, 353, state->seg_mask);


 dib8000_write_word(state, 351, (c->isdbt_sb_mode << 9) | (c->isdbt_sb_mode << 8) | (13 << 4) | 5);

 if (c->isdbt_sb_mode) {

  switch (c->transmission_mode) {
  case 131:
    if (c->isdbt_partial_reception == 0) {
     if (c->layer[0].modulation == DQPSK)
      ncoeff = coeff_2k_sb_1seg_dqpsk;
     else
      ncoeff = coeff_2k_sb_1seg;
    } else {
     if (c->layer[0].modulation == DQPSK) {
      if (c->layer[1].modulation == DQPSK)
       ncoeff = coeff_2k_sb_3seg_0dqpsk_1dqpsk;
      else
       ncoeff = coeff_2k_sb_3seg_0dqpsk;
     } else {
      if (c->layer[1].modulation == DQPSK)
       ncoeff = coeff_2k_sb_3seg_1dqpsk;
      else
       ncoeff = coeff_2k_sb_3seg;
     }
    }
    break;
  case 130:
    if (c->isdbt_partial_reception == 0) {
     if (c->layer[0].modulation == DQPSK)
      ncoeff = coeff_4k_sb_1seg_dqpsk;
     else
      ncoeff = coeff_4k_sb_1seg;
    } else {
     if (c->layer[0].modulation == DQPSK) {
      if (c->layer[1].modulation == DQPSK)
       ncoeff = coeff_4k_sb_3seg_0dqpsk_1dqpsk;
      else
       ncoeff = coeff_4k_sb_3seg_0dqpsk;
     } else {
      if (c->layer[1].modulation == DQPSK)
       ncoeff = coeff_4k_sb_3seg_1dqpsk;
      else
       ncoeff = coeff_4k_sb_3seg;
     }
    }
    break;
  case 128:
  case 129:
  default:
    if (c->isdbt_partial_reception == 0) {
     if (c->layer[0].modulation == DQPSK)
      ncoeff = coeff_8k_sb_1seg_dqpsk;
     else
      ncoeff = coeff_8k_sb_1seg;
    } else {
     if (c->layer[0].modulation == DQPSK) {
      if (c->layer[1].modulation == DQPSK)
       ncoeff = coeff_8k_sb_3seg_0dqpsk_1dqpsk;
      else
       ncoeff = coeff_8k_sb_3seg_0dqpsk;
     } else {
      if (c->layer[1].modulation == DQPSK)
       ncoeff = coeff_8k_sb_3seg_1dqpsk;
      else
       ncoeff = coeff_8k_sb_3seg;
     }
    }
    break;
  }

  for (i = 0; i < 8; i++)
   dib8000_write_word(state, 343 + i, ncoeff[i]);
 }
}
