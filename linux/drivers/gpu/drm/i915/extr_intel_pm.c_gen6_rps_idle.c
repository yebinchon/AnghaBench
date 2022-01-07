
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_rps {int lock; scalar_t__ last_adj; int idle_freq; scalar_t__ enabled; } ;
struct TYPE_2__ {struct intel_rps rps; } ;
struct drm_i915_private {TYPE_1__ gt_pm; } ;


 int GEN6_PMINTRMSK ;
 int I915_WRITE (int ,int ) ;
 scalar_t__ IS_CHERRYVIEW (struct drm_i915_private*) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_i915_private*) ;
 int gen6_disable_rps_interrupts (struct drm_i915_private*) ;
 int gen6_sanitize_rps_pm_mask (struct drm_i915_private*,int ) ;
 int gen6_set_rps (struct drm_i915_private*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vlv_set_rps_idle (struct drm_i915_private*) ;

void gen6_rps_idle(struct drm_i915_private *dev_priv)
{
 struct intel_rps *rps = &dev_priv->gt_pm.rps;






 gen6_disable_rps_interrupts(dev_priv);

 mutex_lock(&rps->lock);
 if (rps->enabled) {
  if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
   vlv_set_rps_idle(dev_priv);
  else
   gen6_set_rps(dev_priv, rps->idle_freq);
  rps->last_adj = 0;
  I915_WRITE(GEN6_PMINTRMSK,
      gen6_sanitize_rps_pm_mask(dev_priv, ~0));
 }
 mutex_unlock(&rps->lock);
}
