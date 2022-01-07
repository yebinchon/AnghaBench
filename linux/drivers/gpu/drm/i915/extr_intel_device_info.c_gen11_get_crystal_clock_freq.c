
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;






 int GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_MASK ;
 int GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_SHIFT ;
 int MISSING_CASE (int) ;

__attribute__((used)) static u32 gen11_get_crystal_clock_freq(struct drm_i915_private *dev_priv,
     u32 rpm_config_reg)
{
 u32 f19_2_mhz = 19200;
 u32 f24_mhz = 24000;
 u32 f25_mhz = 25000;
 u32 f38_4_mhz = 38400;
 u32 crystal_clock = (rpm_config_reg &
        GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_MASK) >>
       GEN11_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_SHIFT;

 switch (crystal_clock) {
 case 130:
  return f24_mhz;
 case 131:
  return f19_2_mhz;
 case 128:
  return f38_4_mhz;
 case 129:
  return f25_mhz;
 default:
  MISSING_CASE(crystal_clock);
  return 0;
 }
}
