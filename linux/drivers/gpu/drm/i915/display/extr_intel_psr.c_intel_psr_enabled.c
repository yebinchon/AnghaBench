
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_dp {int dummy; } ;
struct TYPE_2__ {int lock; scalar_t__ enabled; struct intel_dp* dp; } ;
struct drm_i915_private {TYPE_1__ psr; } ;


 int CAN_PSR (struct drm_i915_private*) ;
 struct drm_i915_private* dp_to_i915 (struct intel_dp*) ;
 int intel_dp_is_edp (struct intel_dp*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

bool intel_psr_enabled(struct intel_dp *intel_dp)
{
 struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 bool ret;

 if (!CAN_PSR(dev_priv) || !intel_dp_is_edp(intel_dp))
  return 0;

 mutex_lock(&dev_priv->psr.lock);
 ret = (dev_priv->psr.dp == intel_dp && dev_priv->psr.enabled);
 mutex_unlock(&dev_priv->psr.lock);

 return ret;
}
