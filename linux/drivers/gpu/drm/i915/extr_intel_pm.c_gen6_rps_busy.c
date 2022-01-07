
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct intel_rps {int lock; int max_freq_softlimit; int min_freq_softlimit; int efficient_freq; int cur_freq; scalar_t__ enabled; } ;
struct TYPE_2__ {struct intel_rps rps; } ;
struct drm_i915_private {int pm_rps_events; TYPE_1__ gt_pm; } ;


 int DRM_DEBUG_DRIVER (char*) ;
 int GEN6_PMINTRMSK ;
 int GEN6_PM_RP_UP_EI_EXPIRED ;
 int I915_WRITE (int ,int ) ;
 int clamp (int ,int ,int ) ;
 int gen6_enable_rps_interrupts (struct drm_i915_private*) ;
 int gen6_rps_pm_mask (struct drm_i915_private*,int ) ;
 int gen6_rps_reset_ei (struct drm_i915_private*) ;
 scalar_t__ intel_set_rps (struct drm_i915_private*,int ) ;
 int max (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void gen6_rps_busy(struct drm_i915_private *dev_priv)
{
 struct intel_rps *rps = &dev_priv->gt_pm.rps;

 mutex_lock(&rps->lock);
 if (rps->enabled) {
  u8 freq;

  if (dev_priv->pm_rps_events & GEN6_PM_RP_UP_EI_EXPIRED)
   gen6_rps_reset_ei(dev_priv);
  I915_WRITE(GEN6_PMINTRMSK,
      gen6_rps_pm_mask(dev_priv, rps->cur_freq));

  gen6_enable_rps_interrupts(dev_priv);




  freq = max(rps->cur_freq,
      rps->efficient_freq);

  if (intel_set_rps(dev_priv,
      clamp(freq,
     rps->min_freq_softlimit,
     rps->max_freq_softlimit)))
   DRM_DEBUG_DRIVER("Failed to set idle frequency\n");
 }
 mutex_unlock(&rps->lock);
}
