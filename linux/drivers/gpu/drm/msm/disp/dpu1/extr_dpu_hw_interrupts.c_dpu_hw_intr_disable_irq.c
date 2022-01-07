
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpu_hw_intr {int irq_lock; } ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int dpu_hw_intr_disable_irq_nolock (struct dpu_hw_intr*,int) ;
 int dpu_irq_map ;
 int pr_err (char*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int dpu_hw_intr_disable_irq(struct dpu_hw_intr *intr, int irq_idx)
{
 unsigned long irq_flags;

 if (!intr)
  return -EINVAL;

 if (irq_idx < 0 || irq_idx >= ARRAY_SIZE(dpu_irq_map)) {
  pr_err("invalid IRQ index: [%d]\n", irq_idx);
  return -EINVAL;
 }

 spin_lock_irqsave(&intr->irq_lock, irq_flags);
 dpu_hw_intr_disable_irq_nolock(intr, irq_idx);
 spin_unlock_irqrestore(&intr->irq_lock, irq_flags);

 return 0;
}
