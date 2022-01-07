
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



 int BXT_DRAM_RANK_MASK ;

 int MISSING_CASE (int) ;
 int bxt_get_dimm_size (int) ;

__attribute__((used)) static int bxt_get_dimm_ranks(u32 val)
{
 if (!bxt_get_dimm_size(val))
  return 0;

 switch (val & BXT_DRAM_RANK_MASK) {
 case 128:
  return 1;
 case 129:
  return 2;
 default:
  MISSING_CASE(val);
  return 0;
 }
}
