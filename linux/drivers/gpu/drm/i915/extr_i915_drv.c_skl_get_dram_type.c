
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;
typedef enum intel_dram_type { ____Placeholder_intel_dram_type } intel_dram_type ;


 int I915_READ (int ) ;
 int INTEL_DRAM_DDR3 ;
 int INTEL_DRAM_DDR4 ;
 int INTEL_DRAM_LPDDR3 ;
 int INTEL_DRAM_LPDDR4 ;
 int INTEL_DRAM_UNKNOWN ;
 int MISSING_CASE (int) ;




 int SKL_DRAM_DDR_TYPE_MASK ;
 int SKL_MAD_INTER_CHANNEL_0_0_0_MCHBAR_MCMAIN ;

__attribute__((used)) static enum intel_dram_type
skl_get_dram_type(struct drm_i915_private *dev_priv)
{
 u32 val;

 val = I915_READ(SKL_MAD_INTER_CHANNEL_0_0_0_MCHBAR_MCMAIN);

 switch (val & SKL_DRAM_DDR_TYPE_MASK) {
 case 131:
  return INTEL_DRAM_DDR3;
 case 130:
  return INTEL_DRAM_DDR4;
 case 129:
  return INTEL_DRAM_LPDDR3;
 case 128:
  return INTEL_DRAM_LPDDR4;
 default:
  MISSING_CASE(val);
  return INTEL_DRAM_UNKNOWN;
 }
}
