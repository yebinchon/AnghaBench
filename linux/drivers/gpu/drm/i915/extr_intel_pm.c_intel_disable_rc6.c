
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_rps {int lock; } ;
struct TYPE_2__ {struct intel_rps rps; } ;
struct drm_i915_private {TYPE_1__ gt_pm; } ;


 int __intel_disable_rc6 (struct drm_i915_private*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void intel_disable_rc6(struct drm_i915_private *dev_priv)
{
 struct intel_rps *rps = &dev_priv->gt_pm.rps;

 mutex_lock(&rps->lock);
 __intel_disable_rc6(dev_priv);
 mutex_unlock(&rps->lock);
}
