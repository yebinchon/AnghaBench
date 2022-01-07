
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_gt {int irq_lock; } ;
struct TYPE_3__ {scalar_t__ pm_iir; } ;
struct TYPE_4__ {TYPE_1__ rps; } ;
struct drm_i915_private {TYPE_2__ gt_pm; struct intel_gt gt; } ;


 int GEN11_GTPM ;
 scalar_t__ gen11_gt_reset_one_iir (struct intel_gt*,int ,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void gen11_reset_rps_interrupts(struct drm_i915_private *dev_priv)
{
 struct intel_gt *gt = &dev_priv->gt;

 spin_lock_irq(&gt->irq_lock);

 while (gen11_gt_reset_one_iir(gt, 0, GEN11_GTPM))
  ;

 dev_priv->gt_pm.rps.pm_iir = 0;

 spin_unlock_irq(&gt->irq_lock);
}
