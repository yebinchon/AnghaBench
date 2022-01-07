
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int wakeref; } ;
struct drm_i915_private {TYPE_1__ csr; } ;


 int POWER_DOMAIN_INIT ;
 int WARN_ON (int ) ;
 int intel_display_power_get (struct drm_i915_private*,int ) ;

__attribute__((used)) static void intel_csr_runtime_pm_get(struct drm_i915_private *dev_priv)
{
 WARN_ON(dev_priv->csr.wakeref);
 dev_priv->csr.wakeref =
  intel_display_power_get(dev_priv, POWER_DOMAIN_INIT);
}
