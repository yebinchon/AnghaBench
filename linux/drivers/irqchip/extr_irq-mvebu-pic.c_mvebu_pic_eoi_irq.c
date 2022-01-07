
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvebu_pic {scalar_t__ base; } ;
struct irq_data {int hwirq; } ;


 scalar_t__ PIC_CAUSE ;
 struct mvebu_pic* irq_data_get_irq_chip_data (struct irq_data*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void mvebu_pic_eoi_irq(struct irq_data *d)
{
 struct mvebu_pic *pic = irq_data_get_irq_chip_data(d);

 writel(1 << d->hwirq, pic->base + PIC_CAUSE);
}
