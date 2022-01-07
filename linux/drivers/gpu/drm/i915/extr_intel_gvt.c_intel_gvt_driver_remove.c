
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int intel_gvt_active (struct drm_i915_private*) ;
 int intel_gvt_clean_device (struct drm_i915_private*) ;

void intel_gvt_driver_remove(struct drm_i915_private *dev_priv)
{
 if (!intel_gvt_active(dev_priv))
  return;

 intel_gvt_clean_device(dev_priv);
}
