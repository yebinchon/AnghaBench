
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int CNL_DRAM_RANK_MASK ;
 int CNL_DRAM_RANK_SHIFT ;
 scalar_t__ cnl_get_dimm_size (int) ;

__attribute__((used)) static int cnl_get_dimm_ranks(u16 val)
{
 if (cnl_get_dimm_size(val) == 0)
  return 0;

 val = (val & CNL_DRAM_RANK_MASK) >> CNL_DRAM_RANK_SHIFT;

 return val + 1;
}
