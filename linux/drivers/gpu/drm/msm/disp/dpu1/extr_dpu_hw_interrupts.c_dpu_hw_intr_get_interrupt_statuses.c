
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct dpu_hw_intr {int* save_irq_status; int irq_lock; int hw; } ;
struct TYPE_3__ {int clr_off; int en_off; int status_off; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 void* DPU_REG_READ (int *,int ) ;
 int DPU_REG_WRITE (int *,int ,int) ;
 TYPE_1__* dpu_intr_set ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wmb () ;

__attribute__((used)) static void dpu_hw_intr_get_interrupt_statuses(struct dpu_hw_intr *intr)
{
 int i;
 u32 enable_mask;
 unsigned long irq_flags;

 if (!intr)
  return;

 spin_lock_irqsave(&intr->irq_lock, irq_flags);
 for (i = 0; i < ARRAY_SIZE(dpu_intr_set); i++) {

  intr->save_irq_status[i] = DPU_REG_READ(&intr->hw,
    dpu_intr_set[i].status_off);


  enable_mask = DPU_REG_READ(&intr->hw, dpu_intr_set[i].en_off);


  if (intr->save_irq_status[i])
   DPU_REG_WRITE(&intr->hw, dpu_intr_set[i].clr_off,
     intr->save_irq_status[i]);


  intr->save_irq_status[i] &= enable_mask;
 }


 wmb();

 spin_unlock_irqrestore(&intr->irq_lock, irq_flags);
}
