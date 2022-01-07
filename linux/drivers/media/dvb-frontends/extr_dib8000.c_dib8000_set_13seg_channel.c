
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {TYPE_1__* pll; } ;
struct dib8000_state {int seg_mask; scalar_t__ isdbt_cfg_loaded; int seg_diff_mask; TYPE_2__ cfg; } ;
struct TYPE_3__ {scalar_t__ ifreq; } ;


 int ana_fe_coeff_13seg ;
 int dib8000_load_ana_fe_coefs (struct dib8000_state*,int ) ;
 int dib8000_write_word (struct dib8000_state*,int,int) ;

__attribute__((used)) static void dib8000_set_13seg_channel(struct dib8000_state *state)
{
 u16 i;
 u16 coff_pow = 0x2800;

 state->seg_mask = 0x1fff;


 if (state->isdbt_cfg_loaded == 0) {
  dib8000_write_word(state, 180, (16 << 6) | 9);
  dib8000_write_word(state, 187, (4 << 12) | (8 << 5) | 0x2);
  coff_pow = 0x2800;
  for (i = 0; i < 6; i++)
   dib8000_write_word(state, 181+i, coff_pow);



  dib8000_write_word(state, 338, (1 << 12) | (1 << 10) | (0 << 9) | (3 << 5) | 1);


  dib8000_write_word(state, 340, (8 << 6) | (6 << 0));

  dib8000_write_word(state, 341, (4 << 3) | (1 << 2) | (1 << 1) | (1 << 0));

  dib8000_write_word(state, 228, 0);
  dib8000_write_word(state, 265, 31);
  dib8000_write_word(state, 205, 0x200f);
 }






 if (state->cfg.pll->ifreq == 0)
  dib8000_write_word(state, 266, ~state->seg_mask | state->seg_diff_mask | 0x40);

 dib8000_load_ana_fe_coefs(state, ana_fe_coeff_13seg);
}
