
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct irq_data {int dummy; } ;
struct intc_irqpin_priv {TYPE_1__* irq; } ;
struct TYPE_4__ {int (* irq_unmask ) (int ) ;} ;
struct TYPE_3__ {int requested_irq; } ;


 int intc_irqpin_irq_enable (struct irq_data*) ;
 struct intc_irqpin_priv* irq_data_get_irq_chip_data (struct irq_data*) ;
 TYPE_2__* irq_get_chip (int) ;
 int irq_get_irq_data (int) ;
 size_t irqd_to_hwirq (struct irq_data*) ;
 int stub1 (int ) ;

__attribute__((used)) static void intc_irqpin_irq_enable_force(struct irq_data *d)
{
 struct intc_irqpin_priv *p = irq_data_get_irq_chip_data(d);
 int irq = p->irq[irqd_to_hwirq(d)].requested_irq;

 intc_irqpin_irq_enable(d);





 irq_get_chip(irq)->irq_unmask(irq_get_irq_data(irq));
}
