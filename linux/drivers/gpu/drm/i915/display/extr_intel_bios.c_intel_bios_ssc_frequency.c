
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int INTEL_GEN (struct drm_i915_private*) ;

__attribute__((used)) static int intel_bios_ssc_frequency(struct drm_i915_private *dev_priv,
        bool alternate)
{
 switch (INTEL_GEN(dev_priv)) {
 case 2:
  return alternate ? 66667 : 48000;
 case 3:
 case 4:
  return alternate ? 100000 : 96000;
 default:
  return alternate ? 100000 : 120000;
 }
}
