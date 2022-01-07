
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvebu_sei {int mask_lock; scalar_t__ base; } ;
struct irq_data {int hwirq; } ;


 int BIT (int ) ;
 scalar_t__ GICP_SEMR (int ) ;
 int SEI_IRQ_REG_BIT (int ) ;
 int SEI_IRQ_REG_IDX (int ) ;
 struct mvebu_sei* irq_data_get_irq_chip_data (struct irq_data*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void mvebu_sei_mask_irq(struct irq_data *d)
{
 struct mvebu_sei *sei = irq_data_get_irq_chip_data(d);
 u32 reg, reg_idx = SEI_IRQ_REG_IDX(d->hwirq);
 unsigned long flags;


 raw_spin_lock_irqsave(&sei->mask_lock, flags);
 reg = readl_relaxed(sei->base + GICP_SEMR(reg_idx));
 reg |= BIT(SEI_IRQ_REG_BIT(d->hwirq));
 writel_relaxed(reg, sei->base + GICP_SEMR(reg_idx));
 raw_spin_unlock_irqrestore(&sei->mask_lock, flags);
}
