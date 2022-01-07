
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irqc_priv {int wakeup_path; TYPE_1__* irq; } ;
struct irq_data {int dummy; } ;
struct TYPE_2__ {int requested_irq; } ;


 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 struct irqc_priv* irq_data_to_priv (struct irq_data*) ;
 int irq_set_irq_wake (int ,unsigned int) ;
 int irqd_to_hwirq (struct irq_data*) ;

__attribute__((used)) static int irqc_irq_set_wake(struct irq_data *d, unsigned int on)
{
 struct irqc_priv *p = irq_data_to_priv(d);
 int hw_irq = irqd_to_hwirq(d);

 irq_set_irq_wake(p->irq[hw_irq].requested_irq, on);
 if (on)
  atomic_inc(&p->wakeup_path);
 else
  atomic_dec(&p->wakeup_path);

 return 0;
}
