
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_data {int dummy; } ;
struct TYPE_2__ {scalar_t__ irq_base; } ;


 int BIT (int ) ;
 scalar_t__ SUN4I_IRQ_PENDING_REG (int ) ;
 TYPE_1__* irq_ic_data ;
 unsigned int irqd_to_hwirq (struct irq_data*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void sun4i_irq_ack(struct irq_data *irqd)
{
 unsigned int irq = irqd_to_hwirq(irqd);

 if (irq != 0)
  return;

 writel(BIT(0), irq_ic_data->irq_base + SUN4I_IRQ_PENDING_REG(0));
}
