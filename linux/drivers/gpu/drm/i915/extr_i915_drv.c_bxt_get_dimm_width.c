
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BXT_DRAM_WIDTH_MASK ;
 int BXT_DRAM_WIDTH_SHIFT ;
 int bxt_get_dimm_size (int) ;

__attribute__((used)) static int bxt_get_dimm_width(u32 val)
{
 if (!bxt_get_dimm_size(val))
  return 0;

 val = (val & BXT_DRAM_WIDTH_MASK) >> BXT_DRAM_WIDTH_SHIFT;

 return 8 << val;
}
