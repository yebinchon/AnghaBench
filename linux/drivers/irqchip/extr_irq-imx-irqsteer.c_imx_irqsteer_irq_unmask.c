
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irqsteer_data {int lock; int reg_num; scalar_t__ regs; } ;
struct irq_data {int hwirq; struct irqsteer_data* chip_data; } ;


 int BIT (int) ;
 scalar_t__ CHANMASK (int,int ) ;
 int imx_irqsteer_get_reg_index (struct irqsteer_data*,int) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void imx_irqsteer_irq_unmask(struct irq_data *d)
{
 struct irqsteer_data *data = d->chip_data;
 int idx = imx_irqsteer_get_reg_index(data, d->hwirq);
 unsigned long flags;
 u32 val;

 raw_spin_lock_irqsave(&data->lock, flags);
 val = readl_relaxed(data->regs + CHANMASK(idx, data->reg_num));
 val |= BIT(d->hwirq % 32);
 writel_relaxed(val, data->regs + CHANMASK(idx, data->reg_num));
 raw_spin_unlock_irqrestore(&data->lock, flags);
}
