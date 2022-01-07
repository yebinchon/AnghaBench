
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct dtv_frontend_properties {scalar_t__ transmission_mode; int isdbt_partial_reception; } ;
struct dib8000_state {int seg_mask; int mode; int seg_diff_mask; TYPE_1__** fe; } ;
struct TYPE_2__ {struct dtv_frontend_properties dtv_property_cache; } ;


 scalar_t__ TRANSMISSION_MODE_2K ;
 scalar_t__ TRANSMISSION_MODE_4K ;
 int* coff_thres_1seg ;
 int* coff_thres_3seg ;
 int dib8000_read_word (struct dib8000_state*,int) ;
 int dib8000_write_word (struct dib8000_state*,int,int const) ;

__attribute__((used)) static void dib8000_set_sb_channel(struct dib8000_state *state)
{
 struct dtv_frontend_properties *c = &state->fe[0]->dtv_property_cache;
 const u16 *coff;
 u16 i;

 if (c->transmission_mode == TRANSMISSION_MODE_2K || c->transmission_mode == TRANSMISSION_MODE_4K) {
  dib8000_write_word(state, 219, dib8000_read_word(state, 219) | 0x1);
  dib8000_write_word(state, 190, dib8000_read_word(state, 190) | (0x1 << 14));
 } else {
  dib8000_write_word(state, 219, dib8000_read_word(state, 219) & 0xfffe);
  dib8000_write_word(state, 190, dib8000_read_word(state, 190) & 0xbfff);
 }

 if (c->isdbt_partial_reception == 1)
  state->seg_mask = 0x00E0;
 else
  state->seg_mask = 0x0040;

 dib8000_write_word(state, 268, (dib8000_read_word(state, 268) & 0xF9FF) | 0x0200);



 dib8000_write_word(state, 187, (4 << 12) | (0 << 11) | (63 << 5) | (0x3 << 3) | ((~c->isdbt_partial_reception & 1) << 2) | 0x3);

 dib8000_write_word(state, 340, (16 << 6) | (8 << 0));
 dib8000_write_word(state, 341, (6 << 3) | (1 << 2) | (1 << 1) | (1 << 0));


 if (c->isdbt_partial_reception == 0) {

  if (state->mode == 3)
   dib8000_write_word(state, 180, 0x1fcf | ((state->mode - 1) << 14));
  else
   dib8000_write_word(state, 180, 0x0fcf | ((state->mode - 1) << 14));


  dib8000_write_word(state, 338, (1 << 12) | (1 << 10) | (0 << 9) | (5 << 5) | 4);
  coff = &coff_thres_1seg[0];
 } else {
  dib8000_write_word(state, 180, 0x1fcf | (1 << 14));

  dib8000_write_word(state, 338, (1 << 12) | (1 << 10) | (0 << 9) | (4 << 5) | 4);
  coff = &coff_thres_3seg[0];
 }

 dib8000_write_word(state, 228, 1);
 dib8000_write_word(state, 205, dib8000_read_word(state, 205) & 0xfff0);

 if (c->isdbt_partial_reception == 0 && c->transmission_mode == TRANSMISSION_MODE_2K)
  dib8000_write_word(state, 265, 15);


 for (i = 0 ; i < 3; i++) {
  dib8000_write_word(state, 181+i, coff[i]);
  dib8000_write_word(state, 184+i, coff[i]);
 }






 dib8000_write_word(state, 266, ~state->seg_mask | state->seg_diff_mask);

 if (c->isdbt_partial_reception == 0)
  dib8000_write_word(state, 178, 64);
 else
  dib8000_write_word(state, 178, 32);
}
