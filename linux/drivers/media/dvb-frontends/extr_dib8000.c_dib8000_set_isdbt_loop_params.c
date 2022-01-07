
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct dtv_frontend_properties {int isdbt_partial_reception; int isdbt_sb_mode; } ;
struct dib8000_state {int mode; TYPE_1__** fe; } ;
typedef enum param_loop_step { ____Placeholder_param_loop_step } param_loop_step ;
struct TYPE_2__ {struct dtv_frontend_properties dtv_property_cache; } ;




 int dib8000_write_word (struct dib8000_state*,int,int) ;

__attribute__((used)) static void dib8000_set_isdbt_loop_params(struct dib8000_state *state, enum param_loop_step loop_step)
{
 struct dtv_frontend_properties *c = &state->fe[0]->dtv_property_cache;
 u16 reg_32 = 0, reg_37 = 0;

 switch (loop_step) {
 case 129:
   if (c->isdbt_sb_mode) {
    if (c->isdbt_partial_reception == 0) {
     reg_32 = ((11 - state->mode) << 12) | (6 << 8) | 0x40;
     reg_37 = (3 << 5) | (0 << 4) | (10 - state->mode);
    } else {
     reg_32 = ((10 - state->mode) << 12) | (6 << 8) | 0x60;
     reg_37 = (3 << 5) | (0 << 4) | (9 - state->mode);
    }
   } else {
    reg_32 = ((9 - state->mode) << 12) | (6 << 8) | 0x80;
    reg_37 = (3 << 5) | (0 << 4) | (8 - state->mode);
   }
   break;
 case 128:
   if (c->isdbt_sb_mode) {
    if (c->isdbt_partial_reception == 0) {
     reg_32 = ((13-state->mode) << 12) | (6 << 8) | 0x40;
     reg_37 = (12-state->mode) | ((5 + state->mode) << 5);
    } else {
     reg_32 = ((12-state->mode) << 12) | (6 << 8) | 0x60;
     reg_37 = (11-state->mode) | ((5 + state->mode) << 5);
    }
   } else {
    reg_32 = ((11-state->mode) << 12) | (6 << 8) | 0x80;
    reg_37 = ((5+state->mode) << 5) | (10 - state->mode);
   }
   break;
 }
 dib8000_write_word(state, 32, reg_32);
 dib8000_write_word(state, 37, reg_37);
}
