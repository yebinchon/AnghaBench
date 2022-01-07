
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_fbc {int active; } ;
struct drm_i915_private {struct intel_fbc fbc; } ;


 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_GM45 (struct drm_i915_private*) ;
 int g4x_fbc_deactivate (struct drm_i915_private*) ;
 int i8xx_fbc_deactivate (struct drm_i915_private*) ;
 int ilk_fbc_deactivate (struct drm_i915_private*) ;

__attribute__((used)) static void intel_fbc_hw_deactivate(struct drm_i915_private *dev_priv)
{
 struct intel_fbc *fbc = &dev_priv->fbc;

 fbc->active = 0;

 if (INTEL_GEN(dev_priv) >= 5)
  ilk_fbc_deactivate(dev_priv);
 else if (IS_GM45(dev_priv))
  g4x_fbc_deactivate(dev_priv);
 else
  i8xx_fbc_deactivate(dev_priv);
}
