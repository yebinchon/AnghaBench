
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int GET_BITFIELD (int ,int,int) ;
 int KNL_MAX_CHANNELS ;
 int WARN_ON (int) ;
 int knl_channel_remap (int,int) ;

__attribute__((used)) static u32 knl_get_mc_route(int entry, u32 reg)
{
 int mc, chan;

 WARN_ON(entry >= KNL_MAX_CHANNELS);

 mc = GET_BITFIELD(reg, entry*3, (entry*3)+2);
 chan = GET_BITFIELD(reg, (entry*2) + 18, (entry*2) + 18 + 1);

 return knl_channel_remap(mc, chan);
}
