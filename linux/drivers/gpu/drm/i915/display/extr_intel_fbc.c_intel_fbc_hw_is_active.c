
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_GM45 (struct drm_i915_private*) ;
 int g4x_fbc_is_active (struct drm_i915_private*) ;
 int i8xx_fbc_is_active (struct drm_i915_private*) ;
 int ilk_fbc_is_active (struct drm_i915_private*) ;

__attribute__((used)) static bool intel_fbc_hw_is_active(struct drm_i915_private *dev_priv)
{
 if (INTEL_GEN(dev_priv) >= 5)
  return ilk_fbc_is_active(dev_priv);
 else if (IS_GM45(dev_priv))
  return g4x_fbc_is_active(dev_priv);
 else
  return i8xx_fbc_is_active(dev_priv);
}
