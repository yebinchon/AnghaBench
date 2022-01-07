
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int enabled; } ;
struct intel_guc {TYPE_1__ interrupts; } ;
struct intel_gt {int irq_lock; int uncore; } ;


 int ENGINE1_MASK ;
 int GEN11_GUC ;
 int GEN11_GUC_SG_INTR_ENABLE ;
 int GEN11_GUC_SG_INTR_MASK ;
 int GUC_INTR_GUC2HOST ;
 int REG_FIELD_PREP (int ,int ) ;
 int WARN_ON_ONCE (int ) ;
 int gen11_gt_reset_one_iir (struct intel_gt*,int ,int ) ;
 struct intel_gt* guc_to_gt (struct intel_guc*) ;
 int intel_uncore_write (int ,int ,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void gen11_enable_guc_interrupts(struct intel_guc *guc)
{
 struct intel_gt *gt = guc_to_gt(guc);

 spin_lock_irq(&gt->irq_lock);
 if (!guc->interrupts.enabled) {
  u32 events = REG_FIELD_PREP(ENGINE1_MASK, GUC_INTR_GUC2HOST);

  WARN_ON_ONCE(gen11_gt_reset_one_iir(gt, 0, GEN11_GUC));
  intel_uncore_write(gt->uncore, GEN11_GUC_SG_INTR_ENABLE, events);
  intel_uncore_write(gt->uncore, GEN11_GUC_SG_INTR_MASK, ~events);
  guc->interrupts.enabled = 1;
 }
 spin_unlock_irq(&gt->irq_lock);
}
