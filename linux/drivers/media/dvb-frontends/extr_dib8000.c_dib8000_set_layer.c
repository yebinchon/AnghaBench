
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u16 ;
struct dtv_frontend_properties {int isdbt_sb_mode; TYPE_2__* layer; } ;
struct dib8000_state {TYPE_1__** fe; } ;
struct TYPE_4__ {int modulation; int fec; int segment_count; int interleaving; } ;
struct TYPE_3__ {struct dtv_frontend_properties dtv_property_cache; } ;
 int dib8000_write_word (struct dib8000_state*,int,size_t) ;
 size_t fls (int ) ;

__attribute__((used)) static u16 dib8000_set_layer(struct dib8000_state *state, u8 layer_index, u16 max_constellation)
{
 u8 cr, constellation, time_intlv;
 struct dtv_frontend_properties *c = &state->fe[0]->dtv_property_cache;

 switch (c->layer[layer_index].modulation) {
 case 136:
   constellation = 0;
   break;
 case 128:
   constellation = 1;
   break;
 case 130:
   constellation = 2;
   break;
 case 129:
 default:
   constellation = 3;
   break;
 }

 switch (c->layer[layer_index].fec) {
 case 135:
   cr = 1;
   break;
 case 134:
   cr = 2;
   break;
 case 133:
   cr = 3;
   break;
 case 132:
   cr = 5;
   break;
 case 131:
 default:
   cr = 7;
   break;
 }

 time_intlv = fls(c->layer[layer_index].interleaving);
 if (time_intlv > 3 && !(time_intlv == 4 && c->isdbt_sb_mode == 1))
  time_intlv = 0;

 dib8000_write_word(state, 2 + layer_index, (constellation << 10) | ((c->layer[layer_index].segment_count & 0xf) << 6) | (cr << 3) | time_intlv);
 if (c->layer[layer_index].segment_count > 0) {
  switch (max_constellation) {
  case 136:
  case 128:
    if (c->layer[layer_index].modulation == 130 || c->layer[layer_index].modulation == 129)
     max_constellation = c->layer[layer_index].modulation;
    break;
  case 130:
    if (c->layer[layer_index].modulation == 129)
     max_constellation = c->layer[layer_index].modulation;
    break;
  }
 }

 return max_constellation;
}
