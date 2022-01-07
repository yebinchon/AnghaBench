
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int rawclk_freq; } ;


 int CTC_MODE ;
 int CTC_SHIFT_PARAMETER_MASK ;
 int CTC_SHIFT_PARAMETER_SHIFT ;
 int CTC_SOURCE_DIVIDE_LOGIC ;
 int CTC_SOURCE_PARAMETER_MASK ;
 int GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_MASK ;
 int GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_SHIFT ;
 int I915_READ (int ) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_GEN9_LP (struct drm_i915_private*) ;
 int MISSING_CASE (char*) ;
 int RPM_CONFIG0 ;
 int gen10_get_crystal_clock_freq (struct drm_i915_private*,int) ;
 int gen11_get_crystal_clock_freq (struct drm_i915_private*,int) ;
 int read_reference_ts_freq (struct drm_i915_private*) ;

__attribute__((used)) static u32 read_timestamp_frequency(struct drm_i915_private *dev_priv)
{
 u32 f12_5_mhz = 12500;
 u32 f19_2_mhz = 19200;
 u32 f24_mhz = 24000;

 if (INTEL_GEN(dev_priv) <= 4) {






  return dev_priv->rawclk_freq / 16;
 } else if (INTEL_GEN(dev_priv) <= 8) {






  return f12_5_mhz;
 } else if (INTEL_GEN(dev_priv) <= 9) {
  u32 ctc_reg = I915_READ(CTC_MODE);
  u32 freq = 0;

  if ((ctc_reg & CTC_SOURCE_PARAMETER_MASK) == CTC_SOURCE_DIVIDE_LOGIC) {
   freq = read_reference_ts_freq(dev_priv);
  } else {
   freq = IS_GEN9_LP(dev_priv) ? f19_2_mhz : f24_mhz;





   freq >>= 3 - ((ctc_reg & CTC_SHIFT_PARAMETER_MASK) >>
          CTC_SHIFT_PARAMETER_SHIFT);
  }

  return freq;
 } else if (INTEL_GEN(dev_priv) <= 12) {
  u32 ctc_reg = I915_READ(CTC_MODE);
  u32 freq = 0;






  if ((ctc_reg & CTC_SOURCE_PARAMETER_MASK) == CTC_SOURCE_DIVIDE_LOGIC) {
   freq = read_reference_ts_freq(dev_priv);
  } else {
   u32 rpm_config_reg = I915_READ(RPM_CONFIG0);

   if (INTEL_GEN(dev_priv) <= 10)
    freq = gen10_get_crystal_clock_freq(dev_priv,
        rpm_config_reg);
   else
    freq = gen11_get_crystal_clock_freq(dev_priv,
        rpm_config_reg);





   freq >>= 3 - ((rpm_config_reg &
           GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_MASK) >>
          GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_SHIFT);
  }

  return freq;
 }

 MISSING_CASE("Unknown gen, unable to read command streamer timestamp frequency\n");
 return 0;
}
