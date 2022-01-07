
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct intel_gt {TYPE_2__* i915; int irq_lock; } ;
struct TYPE_4__ {int which_slice; int error_work; } ;
struct TYPE_5__ {TYPE_1__ l3_parity; } ;


 int GT_PARITY_ERROR (TYPE_2__*) ;
 int GT_RENDER_L3_PARITY_ERROR_INTERRUPT ;
 int GT_RENDER_L3_PARITY_ERROR_INTERRUPT_S1 ;
 int HAS_L3_DPF (TYPE_2__*) ;
 int gen5_gt_disable_irq (struct intel_gt*,int ) ;
 int schedule_work (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void gen7_parity_error_irq_handler(struct intel_gt *gt, u32 iir)
{
 if (!HAS_L3_DPF(gt->i915))
  return;

 spin_lock(&gt->irq_lock);
 gen5_gt_disable_irq(gt, GT_PARITY_ERROR(gt->i915));
 spin_unlock(&gt->irq_lock);

 if (iir & GT_RENDER_L3_PARITY_ERROR_INTERRUPT_S1)
  gt->i915->l3_parity.which_slice |= 1 << 1;

 if (iir & GT_RENDER_L3_PARITY_ERROR_INTERRUPT)
  gt->i915->l3_parity.which_slice |= 1 << 0;

 schedule_work(&gt->i915->l3_parity.error_work);
}
