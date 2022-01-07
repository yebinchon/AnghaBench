
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int SKL_DRAM_SIZE_MASK ;

__attribute__((used)) static int skl_get_dimm_size(u16 val)
{
 return val & SKL_DRAM_SIZE_MASK;
}
