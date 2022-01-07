
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct irq_fwspec {int param_count; int* param; int fwnode; } ;
struct irq_domain {TYPE_1__* parent; } ;
typedef scalar_t__ irq_hw_number_t ;
struct TYPE_4__ {int int_max; scalar_t__* irq_map; int (* write ) (int,scalar_t__) ;int lock; } ;
struct TYPE_3__ {int fwnode; } ;


 int EINVAL ;
 int ENODEV ;
 scalar_t__ IRQ_FREE ;
 int IRQ_TYPE_LEVEL_HIGH ;
 TYPE_2__* cb ;
 int irq_domain_alloc_irqs_parent (struct irq_domain*,unsigned int,int,struct irq_fwspec*) ;
 int irq_domain_get_of_node (TYPE_1__*) ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;
 int stub1 (int,scalar_t__) ;

__attribute__((used)) static int allocate_gic_irq(struct irq_domain *domain, unsigned virq,
       irq_hw_number_t hwirq)
{
 struct irq_fwspec fwspec;
 int i;
 int err;

 if (!irq_domain_get_of_node(domain->parent))
  return -EINVAL;

 raw_spin_lock(&cb->lock);
 for (i = cb->int_max - 1; i >= 0; i--) {
  if (cb->irq_map[i] == IRQ_FREE) {
   cb->irq_map[i] = hwirq;
   break;
  }
 }
 raw_spin_unlock(&cb->lock);

 if (i < 0)
  return -ENODEV;

 fwspec.fwnode = domain->parent->fwnode;
 fwspec.param_count = 3;
 fwspec.param[0] = 0;
 fwspec.param[1] = i;
 fwspec.param[2] = IRQ_TYPE_LEVEL_HIGH;

 err = irq_domain_alloc_irqs_parent(domain, virq, 1, &fwspec);
 if (err)
  cb->irq_map[i] = IRQ_FREE;
 else
  cb->write(i, hwirq);

 return err;
}
