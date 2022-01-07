
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int EIO ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int intel_enable_gtt () ;

int i915_ggtt_enable_hw(struct drm_i915_private *dev_priv)
{
 if (INTEL_GEN(dev_priv) < 6 && !intel_enable_gtt())
  return -EIO;

 return 0;
}
