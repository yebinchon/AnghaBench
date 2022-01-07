
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int runtime_pm; } ;
typedef enum intel_display_power_domain { ____Placeholder_intel_display_power_domain } intel_display_power_domain ;


 int __intel_display_power_put (struct drm_i915_private*,int) ;
 int intel_runtime_pm_put_unchecked (int *) ;

void intel_display_power_put_unchecked(struct drm_i915_private *dev_priv,
           enum intel_display_power_domain domain)
{
 __intel_display_power_put(dev_priv, domain);
 intel_runtime_pm_put_unchecked(&dev_priv->runtime_pm);
}
