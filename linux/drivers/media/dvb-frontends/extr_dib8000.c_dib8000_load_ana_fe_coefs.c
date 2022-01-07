
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dib8000_state {scalar_t__ isdbt_cfg_loaded; } ;
typedef int s16 ;


 int dib8000_write_word (struct dib8000_state*,int,int const) ;

__attribute__((used)) static void dib8000_load_ana_fe_coefs(struct dib8000_state *state, const s16 *ana_fe)
{
 u16 mode = 0;

 if (state->isdbt_cfg_loaded == 0)
  for (mode = 0; mode < 24; mode++)
   dib8000_write_word(state, 117 + mode, ana_fe[mode]);
}
