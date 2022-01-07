
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct dpu_hw_intr {int irq_lock; int hw; } ;
struct TYPE_5__ {int clr_off; int status_off; } ;
struct TYPE_4__ {int reg_idx; int irq_mask; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int DPU_REG_READ (int *,int ) ;
 int DPU_REG_WRITE (int *,int ,int) ;
 TYPE_2__* dpu_intr_set ;
 TYPE_1__* dpu_irq_map ;
 int pr_err (char*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wmb () ;

__attribute__((used)) static u32 dpu_hw_intr_get_interrupt_status(struct dpu_hw_intr *intr,
  int irq_idx, bool clear)
{
 int reg_idx;
 unsigned long irq_flags;
 u32 intr_status;

 if (!intr)
  return 0;

 if (irq_idx >= ARRAY_SIZE(dpu_irq_map) || irq_idx < 0) {
  pr_err("invalid IRQ index: [%d]\n", irq_idx);
  return 0;
 }

 spin_lock_irqsave(&intr->irq_lock, irq_flags);

 reg_idx = dpu_irq_map[irq_idx].reg_idx;
 intr_status = DPU_REG_READ(&intr->hw,
   dpu_intr_set[reg_idx].status_off) &
     dpu_irq_map[irq_idx].irq_mask;
 if (intr_status && clear)
  DPU_REG_WRITE(&intr->hw, dpu_intr_set[reg_idx].clr_off,
    intr_status);


 wmb();

 spin_unlock_irqrestore(&intr->irq_lock, irq_flags);

 return intr_status;
}
