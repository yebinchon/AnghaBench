
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
struct TYPE_4__ {TYPE_1__ rps; } ;
struct drm_i915_private {TYPE_2__ gt_pm; } ;


 scalar_t__ HAS_LLC (struct drm_i915_private*) ;
 int __intel_disable_rc6 (struct drm_i915_private*) ;
 int intel_disable_llc_pstate (struct drm_i915_private*) ;
 int intel_disable_rps (struct drm_i915_private*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void intel_disable_gt_powersave(struct drm_i915_private *dev_priv)
{
 mutex_lock(&dev_priv->gt_pm.rps.lock);

 __intel_disable_rc6(dev_priv);
 intel_disable_rps(dev_priv);
 if (HAS_LLC(dev_priv))
  intel_disable_llc_pstate(dev_priv);

 mutex_unlock(&dev_priv->gt_pm.rps.lock);
}
