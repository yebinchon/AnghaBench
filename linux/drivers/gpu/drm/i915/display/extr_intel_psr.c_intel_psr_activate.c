
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_dp {int dummy; } ;
struct TYPE_2__ {int active; scalar_t__ psr2_enabled; int lock; } ;
struct drm_i915_private {TYPE_1__ psr; } ;


 int EDP_PSR2_CTL ;
 int EDP_PSR2_ENABLE ;
 int EDP_PSR_CTL ;
 int EDP_PSR_ENABLE ;
 int I915_READ (int ) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int WARN_ON (int) ;
 struct drm_i915_private* dp_to_i915 (struct intel_dp*) ;
 int hsw_activate_psr1 (struct intel_dp*) ;
 int hsw_activate_psr2 (struct intel_dp*) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void intel_psr_activate(struct intel_dp *intel_dp)
{
 struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);

 if (INTEL_GEN(dev_priv) >= 9)
  WARN_ON(I915_READ(EDP_PSR2_CTL) & EDP_PSR2_ENABLE);
 WARN_ON(I915_READ(EDP_PSR_CTL) & EDP_PSR_ENABLE);
 WARN_ON(dev_priv->psr.active);
 lockdep_assert_held(&dev_priv->psr.lock);


 if (dev_priv->psr.psr2_enabled)
  hsw_activate_psr2(intel_dp);
 else
  hsw_activate_psr1(intel_dp);

 dev_priv->psr.active = 1;
}
