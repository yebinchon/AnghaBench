
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum intel_dram_type { ____Placeholder_intel_dram_type } intel_dram_type ;






 int BXT_DRAM_TYPE_MASK ;
 int INTEL_DRAM_DDR3 ;
 int INTEL_DRAM_DDR4 ;
 int INTEL_DRAM_LPDDR3 ;
 int INTEL_DRAM_LPDDR4 ;
 int INTEL_DRAM_UNKNOWN ;
 int MISSING_CASE (int) ;
 int bxt_get_dimm_size (int) ;

__attribute__((used)) static enum intel_dram_type bxt_get_dimm_type(u32 val)
{
 if (!bxt_get_dimm_size(val))
  return INTEL_DRAM_UNKNOWN;

 switch (val & BXT_DRAM_TYPE_MASK) {
 case 131:
  return INTEL_DRAM_DDR3;
 case 129:
  return INTEL_DRAM_LPDDR3;
 case 130:
  return INTEL_DRAM_DDR4;
 case 128:
  return INTEL_DRAM_LPDDR4;
 default:
  MISSING_CASE(val);
  return INTEL_DRAM_UNKNOWN;
 }
}
