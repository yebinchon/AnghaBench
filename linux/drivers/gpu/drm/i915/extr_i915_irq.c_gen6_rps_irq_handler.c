
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct intel_rps {int pm_iir; int work; scalar_t__ interrupts_enabled; } ;
struct intel_gt {int irq_lock; } ;
struct TYPE_2__ {struct intel_rps rps; } ;
struct drm_i915_private {int pm_rps_events; int * engine; struct intel_gt gt; TYPE_1__ gt_pm; } ;


 int DRM_DEBUG (char*,int) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int PM_VEBOX_CS_ERROR_INTERRUPT ;
 int PM_VEBOX_USER_INTERRUPT ;
 size_t VECS0 ;
 int gen6_gt_pm_mask_irq (struct intel_gt*,int) ;
 int intel_engine_breadcrumbs_irq (int ) ;
 int schedule_work (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void gen6_rps_irq_handler(struct drm_i915_private *dev_priv, u32 pm_iir)
{
 struct intel_rps *rps = &dev_priv->gt_pm.rps;
 struct intel_gt *gt = &dev_priv->gt;

 if (pm_iir & dev_priv->pm_rps_events) {
  spin_lock(&gt->irq_lock);
  gen6_gt_pm_mask_irq(gt, pm_iir & dev_priv->pm_rps_events);
  if (rps->interrupts_enabled) {
   rps->pm_iir |= pm_iir & dev_priv->pm_rps_events;
   schedule_work(&rps->work);
  }
  spin_unlock(&gt->irq_lock);
 }

 if (INTEL_GEN(dev_priv) >= 8)
  return;

 if (pm_iir & PM_VEBOX_USER_INTERRUPT)
  intel_engine_breadcrumbs_irq(dev_priv->engine[VECS0]);

 if (pm_iir & PM_VEBOX_CS_ERROR_INTERRUPT)
  DRM_DEBUG("Command parser error, pm_iir 0x%08x\n", pm_iir);
}
