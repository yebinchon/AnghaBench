
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_domain {int dummy; } ;
struct irq_data {size_t hwirq; } ;
struct TYPE_2__ {int lock; int safe_map; int (* write ) (size_t,int ) ;int * irq_map; } ;


 int IRQ_FREE ;
 TYPE_1__* cb ;
 struct irq_data* irq_domain_get_irq_data (struct irq_domain*,unsigned int) ;
 int irq_domain_reset_irq_data (struct irq_data*) ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;
 int stub1 (size_t,int ) ;

__attribute__((used)) static void crossbar_domain_free(struct irq_domain *domain, unsigned int virq,
     unsigned int nr_irqs)
{
 int i;

 raw_spin_lock(&cb->lock);
 for (i = 0; i < nr_irqs; i++) {
  struct irq_data *d = irq_domain_get_irq_data(domain, virq + i);

  irq_domain_reset_irq_data(d);
  cb->irq_map[d->hwirq] = IRQ_FREE;
  cb->write(d->hwirq, cb->safe_map);
 }
 raw_spin_unlock(&cb->lock);
}
