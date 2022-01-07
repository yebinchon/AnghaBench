
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int MISSING_CASE (int) ;
 int SKL_DRAM_WIDTH_MASK ;
 int SKL_DRAM_WIDTH_SHIFT ;



 scalar_t__ skl_get_dimm_size (int) ;

__attribute__((used)) static int skl_get_dimm_width(u16 val)
{
 if (skl_get_dimm_size(val) == 0)
  return 0;

 switch (val & SKL_DRAM_WIDTH_MASK) {
 case 128:
 case 130:
 case 129:
  val = (val & SKL_DRAM_WIDTH_MASK) >> SKL_DRAM_WIDTH_SHIFT;
  return 8 << val;
 default:
  MISSING_CASE(val);
  return 0;
 }
}
