
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct dtv_frontend_properties {int transmission_mode; int bandwidth_hz; } ;
struct dib8000_state {TYPE_1__** fe; } ;
struct TYPE_2__ {struct dtv_frontend_properties dtv_property_cache; } ;


 int* LUT_isdbt_symbol_duration ;





__attribute__((used)) static u32 dib8000_get_symbol_duration(struct dib8000_state *state)
{
 struct dtv_frontend_properties *c = &state->fe[0]->dtv_property_cache;
 u16 i;

 switch (c->transmission_mode) {
 case 131:
   i = 0;
   break;
 case 130:
   i = 2;
   break;
 default:
 case 128:
 case 129:
   i = 1;
   break;
 }

 return (LUT_isdbt_symbol_duration[i] / (c->bandwidth_hz / 1000)) + 1;
}
