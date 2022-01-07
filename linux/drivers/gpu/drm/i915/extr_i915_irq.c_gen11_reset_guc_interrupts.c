
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_guc {int dummy; } ;
struct intel_gt {int irq_lock; } ;


 int GEN11_GUC ;
 int gen11_gt_reset_one_iir (struct intel_gt*,int ,int ) ;
 struct intel_gt* guc_to_gt (struct intel_guc*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void gen11_reset_guc_interrupts(struct intel_guc *guc)
{
 struct intel_gt *gt = guc_to_gt(guc);

 spin_lock_irq(&gt->irq_lock);
 gen11_gt_reset_one_iir(gt, 0, GEN11_GUC);
 spin_unlock_irq(&gt->irq_lock);
}
