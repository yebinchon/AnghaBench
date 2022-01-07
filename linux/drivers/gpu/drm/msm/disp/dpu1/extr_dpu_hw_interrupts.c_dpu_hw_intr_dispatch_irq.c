
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int (* clear_intr_status_nolock ) (struct dpu_hw_intr*,int) ;} ;
struct dpu_hw_intr {int* save_irq_status; int irq_lock; TYPE_1__ ops; } ;
struct TYPE_6__ {int irq_mask; int reg_idx; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 TYPE_2__* dpu_intr_set ;
 TYPE_2__* dpu_irq_map ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct dpu_hw_intr*,int) ;

__attribute__((used)) static void dpu_hw_intr_dispatch_irq(struct dpu_hw_intr *intr,
  void (*cbfunc)(void *, int),
  void *arg)
{
 int reg_idx;
 int irq_idx;
 int start_idx;
 int end_idx;
 u32 irq_status;
 unsigned long irq_flags;

 if (!intr)
  return;






 spin_lock_irqsave(&intr->irq_lock, irq_flags);
 for (reg_idx = 0; reg_idx < ARRAY_SIZE(dpu_intr_set); reg_idx++) {
  irq_status = intr->save_irq_status[reg_idx];





  start_idx = reg_idx * 32;
  end_idx = start_idx + 32;

  if (start_idx >= ARRAY_SIZE(dpu_irq_map) ||
    end_idx > ARRAY_SIZE(dpu_irq_map))
   continue;






  for (irq_idx = start_idx;
    (irq_idx < end_idx) && irq_status;
    irq_idx++)
   if ((irq_status & dpu_irq_map[irq_idx].irq_mask) &&
    (dpu_irq_map[irq_idx].reg_idx == reg_idx)) {







    if (cbfunc)
     cbfunc(arg, irq_idx);
    else
     intr->ops.clear_intr_status_nolock(
       intr, irq_idx);






    irq_status &= ~dpu_irq_map[irq_idx].irq_mask;
   }
 }
 spin_unlock_irqrestore(&intr->irq_lock, irq_flags);
}
