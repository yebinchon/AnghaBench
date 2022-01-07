
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;







 int BXT_DRAM_SIZE_MASK ;
 int MISSING_CASE (int) ;

__attribute__((used)) static int bxt_get_dimm_size(u32 val)
{
 switch (val & BXT_DRAM_SIZE_MASK) {
 case 130:
  return 4;
 case 129:
  return 6;
 case 128:
  return 8;
 case 132:
  return 12;
 case 131:
  return 16;
 default:
  MISSING_CASE(val);
  return 0;
 }
}
