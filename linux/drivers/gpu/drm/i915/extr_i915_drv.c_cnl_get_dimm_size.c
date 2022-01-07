
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int CNL_DRAM_SIZE_MASK ;

__attribute__((used)) static int cnl_get_dimm_size(u16 val)
{
 return (val & CNL_DRAM_SIZE_MASK) / 2;
}
