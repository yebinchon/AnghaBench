
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct dib8000_state {TYPE_2__** fe; } ;
struct TYPE_3__ {int transmission_mode; } ;
struct TYPE_4__ {TYPE_1__ dtv_property_cache; } ;





 int dprintk (char*,int,int,int) ;
 int* lut_prbs_2k ;
 int* lut_prbs_4k ;
 int* lut_prbs_8k ;

__attribute__((used)) static u16 dib8000_get_init_prbs(struct dib8000_state *state, u16 subchannel)
{
 int sub_channel_prbs_group = 0;

 sub_channel_prbs_group = (subchannel / 3) + 1;
 dprintk("sub_channel_prbs_group = %d , subchannel =%d prbs = 0x%04x\n", sub_channel_prbs_group, subchannel, lut_prbs_8k[sub_channel_prbs_group]);

 switch (state->fe[0]->dtv_property_cache.transmission_mode) {
 case 130:
   return lut_prbs_2k[sub_channel_prbs_group];
 case 129:
   return lut_prbs_4k[sub_channel_prbs_group];
 default:
 case 128:
   return lut_prbs_8k[sub_channel_prbs_group];
 }
}
