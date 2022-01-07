
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int INTEL_GEN (struct drm_i915_private const*) ;

__attribute__((used)) static unsigned int ilk_fbc_wm_reg_max(const struct drm_i915_private *dev_priv)
{
 if (INTEL_GEN(dev_priv) >= 8)
  return 31;
 else
  return 15;
}
