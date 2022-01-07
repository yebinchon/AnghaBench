
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_rps {int interrupts_enabled; int pm_iir; } ;
struct intel_gt {int irq_lock; } ;
struct TYPE_2__ {struct intel_rps rps; } ;
struct drm_i915_private {int pm_rps_events; TYPE_1__ gt_pm; struct intel_gt gt; } ;


 int GEN11_GTPM ;
 int I915_READ (int ) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ READ_ONCE (int) ;
 int WARN_ON_ONCE (int) ;
 int gen11_gt_reset_one_iir (struct intel_gt*,int ,int ) ;
 int gen6_gt_pm_enable_irq (struct intel_gt*,int) ;
 int gen6_pm_iir (struct drm_i915_private*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void gen6_enable_rps_interrupts(struct drm_i915_private *dev_priv)
{
 struct intel_gt *gt = &dev_priv->gt;
 struct intel_rps *rps = &dev_priv->gt_pm.rps;

 if (READ_ONCE(rps->interrupts_enabled))
  return;

 spin_lock_irq(&gt->irq_lock);
 WARN_ON_ONCE(rps->pm_iir);

 if (INTEL_GEN(dev_priv) >= 11)
  WARN_ON_ONCE(gen11_gt_reset_one_iir(gt, 0, GEN11_GTPM));
 else
  WARN_ON_ONCE(I915_READ(gen6_pm_iir(dev_priv)) & dev_priv->pm_rps_events);

 rps->interrupts_enabled = 1;
 gen6_gt_pm_enable_irq(gt, dev_priv->pm_rps_events);

 spin_unlock_irq(&gt->irq_lock);
}
