
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_rps {int interrupts_enabled; int work; } ;
struct intel_gt {int irq_lock; } ;
struct TYPE_2__ {struct intel_rps rps; } ;
struct drm_i915_private {struct intel_gt gt; TYPE_1__ gt_pm; } ;


 int GEN6_PMINTRMSK ;
 int GEN6_PM_RPS_EVENTS ;
 int I915_WRITE (int ,int ) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int READ_ONCE (int) ;
 int cancel_work_sync (int *) ;
 int gen11_reset_rps_interrupts (struct drm_i915_private*) ;
 int gen6_gt_pm_disable_irq (struct intel_gt*,int ) ;
 int gen6_reset_rps_interrupts (struct drm_i915_private*) ;
 int gen6_sanitize_rps_pm_mask (struct drm_i915_private*,unsigned int) ;
 int intel_synchronize_irq (struct drm_i915_private*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void gen6_disable_rps_interrupts(struct drm_i915_private *dev_priv)
{
 struct intel_rps *rps = &dev_priv->gt_pm.rps;
 struct intel_gt *gt = &dev_priv->gt;

 if (!READ_ONCE(rps->interrupts_enabled))
  return;

 spin_lock_irq(&gt->irq_lock);
 rps->interrupts_enabled = 0;

 I915_WRITE(GEN6_PMINTRMSK, gen6_sanitize_rps_pm_mask(dev_priv, ~0u));

 gen6_gt_pm_disable_irq(gt, GEN6_PM_RPS_EVENTS);

 spin_unlock_irq(&gt->irq_lock);
 intel_synchronize_irq(dev_priv);






 cancel_work_sync(&rps->work);
 if (INTEL_GEN(dev_priv) >= 11)
  gen11_reset_rps_interrupts(dev_priv);
 else
  gen6_reset_rps_interrupts(dev_priv);
}
