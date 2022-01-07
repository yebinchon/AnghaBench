
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int GET_BITFIELD (int ,int,int) ;
 int KNL_MAX_EDCS ;
 int WARN_ON (int) ;

__attribute__((used)) static u32 knl_get_edc_route(int entry, u32 reg)
{
 WARN_ON(entry >= KNL_MAX_EDCS);
 return GET_BITFIELD(reg, entry*3, (entry*3)+2);
}
