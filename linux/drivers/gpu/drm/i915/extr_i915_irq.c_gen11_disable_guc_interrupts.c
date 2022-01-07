
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enabled; } ;
struct intel_guc {TYPE_1__ interrupts; } ;
struct intel_gt {int i915; int irq_lock; int uncore; } ;


 int GEN11_GUC_SG_INTR_ENABLE ;
 int GEN11_GUC_SG_INTR_MASK ;
 int gen11_reset_guc_interrupts (struct intel_guc*) ;
 struct intel_gt* guc_to_gt (struct intel_guc*) ;
 int intel_synchronize_irq (int ) ;
 int intel_uncore_write (int ,int ,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void gen11_disable_guc_interrupts(struct intel_guc *guc)
{
 struct intel_gt *gt = guc_to_gt(guc);

 spin_lock_irq(&gt->irq_lock);
 guc->interrupts.enabled = 0;

 intel_uncore_write(gt->uncore, GEN11_GUC_SG_INTR_MASK, ~0);
 intel_uncore_write(gt->uncore, GEN11_GUC_SG_INTR_ENABLE, 0);

 spin_unlock_irq(&gt->irq_lock);
 intel_synchronize_irq(gt->i915);

 gen11_reset_guc_interrupts(guc);
}
