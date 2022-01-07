
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
 scalar_t__ HAS_RC6 (struct drm_i915_private*) ;
 scalar_t__ HAS_RPS (struct drm_i915_private*) ;
 int intel_enable_llc_pstate (struct drm_i915_private*) ;
 int intel_enable_rc6 (struct drm_i915_private*) ;
 int intel_enable_rps (struct drm_i915_private*) ;
 scalar_t__ intel_vgpu_active (struct drm_i915_private*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void intel_enable_gt_powersave(struct drm_i915_private *dev_priv)
{

 if (intel_vgpu_active(dev_priv))
  return;

 mutex_lock(&dev_priv->gt_pm.rps.lock);

 if (HAS_RC6(dev_priv))
  intel_enable_rc6(dev_priv);
 if (HAS_RPS(dev_priv))
  intel_enable_rps(dev_priv);
 if (HAS_LLC(dev_priv))
  intel_enable_llc_pstate(dev_priv);

 mutex_unlock(&dev_priv->gt_pm.rps.lock);
}
