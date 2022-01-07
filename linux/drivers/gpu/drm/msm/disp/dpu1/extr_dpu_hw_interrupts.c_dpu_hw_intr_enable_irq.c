
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dpu_irq_type {int reg_idx; int irq_mask; } ;
struct dpu_intr_reg {int en_off; int clr_off; } ;
struct dpu_hw_intr {int* cache_irq_mask; int irq_lock; int hw; } ;


 int ARRAY_SIZE (struct dpu_irq_type*) ;
 int DPU_REG_WRITE (int *,int ,int) ;
 int EINVAL ;
 struct dpu_intr_reg* dpu_intr_set ;
 struct dpu_irq_type* dpu_irq_map ;
 int pr_debug (char*,char const*,int,int) ;
 int pr_err (char*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wmb () ;

__attribute__((used)) static int dpu_hw_intr_enable_irq(struct dpu_hw_intr *intr, int irq_idx)
{
 int reg_idx;
 unsigned long irq_flags;
 const struct dpu_intr_reg *reg;
 const struct dpu_irq_type *irq;
 const char *dbgstr = ((void*)0);
 uint32_t cache_irq_mask;

 if (!intr)
  return -EINVAL;

 if (irq_idx < 0 || irq_idx >= ARRAY_SIZE(dpu_irq_map)) {
  pr_err("invalid IRQ index: [%d]\n", irq_idx);
  return -EINVAL;
 }

 irq = &dpu_irq_map[irq_idx];
 reg_idx = irq->reg_idx;
 reg = &dpu_intr_set[reg_idx];

 spin_lock_irqsave(&intr->irq_lock, irq_flags);
 cache_irq_mask = intr->cache_irq_mask[reg_idx];
 if (cache_irq_mask & irq->irq_mask) {
  dbgstr = "DPU IRQ already set:";
 } else {
  dbgstr = "DPU IRQ enabled:";

  cache_irq_mask |= irq->irq_mask;

  DPU_REG_WRITE(&intr->hw, reg->clr_off, irq->irq_mask);

  DPU_REG_WRITE(&intr->hw, reg->en_off, cache_irq_mask);


  wmb();

  intr->cache_irq_mask[reg_idx] = cache_irq_mask;
 }
 spin_unlock_irqrestore(&intr->irq_lock, irq_flags);

 pr_debug("%s MASK:0x%.8x, CACHE-MASK:0x%.8x\n", dbgstr,
   irq->irq_mask, cache_irq_mask);

 return 0;
}
