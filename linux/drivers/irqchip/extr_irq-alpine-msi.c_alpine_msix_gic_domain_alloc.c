
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct irq_fwspec {int param_count; int* param; int fwnode; } ;
struct irq_domain {TYPE_2__* parent; } ;
struct irq_data {TYPE_1__* chip; } ;
struct TYPE_4__ {int fwnode; } ;
struct TYPE_3__ {int (* irq_set_type ) (struct irq_data*,int) ;} ;


 int EINVAL ;
 int IRQ_TYPE_EDGE_RISING ;
 int irq_domain_alloc_irqs_parent (struct irq_domain*,unsigned int,int,struct irq_fwspec*) ;
 struct irq_data* irq_domain_get_irq_data (TYPE_2__*,unsigned int) ;
 int is_of_node (int ) ;
 int stub1 (struct irq_data*,int) ;

__attribute__((used)) static int alpine_msix_gic_domain_alloc(struct irq_domain *domain,
     unsigned int virq, int sgi)
{
 struct irq_fwspec fwspec;
 struct irq_data *d;
 int ret;

 if (!is_of_node(domain->parent->fwnode))
  return -EINVAL;

 fwspec.fwnode = domain->parent->fwnode;
 fwspec.param_count = 3;
 fwspec.param[0] = 0;
 fwspec.param[1] = sgi;
 fwspec.param[2] = IRQ_TYPE_EDGE_RISING;

 ret = irq_domain_alloc_irqs_parent(domain, virq, 1, &fwspec);
 if (ret)
  return ret;

 d = irq_domain_get_irq_data(domain->parent, virq);
 d->chip->irq_set_type(d, IRQ_TYPE_EDGE_RISING);

 return 0;
}
