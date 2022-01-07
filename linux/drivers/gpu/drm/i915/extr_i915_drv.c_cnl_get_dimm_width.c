
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int CNL_DRAM_WIDTH_MASK ;
 int CNL_DRAM_WIDTH_SHIFT ;



 int MISSING_CASE (int) ;
 scalar_t__ cnl_get_dimm_size (int) ;

__attribute__((used)) static int cnl_get_dimm_width(u16 val)
{
 if (cnl_get_dimm_size(val) == 0)
  return 0;

 switch (val & CNL_DRAM_WIDTH_MASK) {
 case 128:
 case 130:
 case 129:
  val = (val & CNL_DRAM_WIDTH_MASK) >> CNL_DRAM_WIDTH_SHIFT;
  return 8 << val;
 default:
  MISSING_CASE(val);
  return 0;
 }
}
