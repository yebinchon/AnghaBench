
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_fwspec {int param_count; void** param; int fwnode; } ;
struct irq_domain {TYPE_1__* parent; } ;
typedef void* irq_hw_number_t ;
struct TYPE_2__ {int fwnode; } ;


 int EINVAL ;
 void* GIC_IRQ_TYPE_LPI ;
 void* IRQ_TYPE_EDGE_RISING ;
 int irq_domain_alloc_irqs_parent (struct irq_domain*,unsigned int,int,struct irq_fwspec*) ;
 scalar_t__ irq_domain_get_of_node (TYPE_1__*) ;
 scalar_t__ is_fwnode_irqchip (int ) ;

__attribute__((used)) static int its_irq_gic_domain_alloc(struct irq_domain *domain,
        unsigned int virq,
        irq_hw_number_t hwirq)
{
 struct irq_fwspec fwspec;

 if (irq_domain_get_of_node(domain->parent)) {
  fwspec.fwnode = domain->parent->fwnode;
  fwspec.param_count = 3;
  fwspec.param[0] = GIC_IRQ_TYPE_LPI;
  fwspec.param[1] = hwirq;
  fwspec.param[2] = IRQ_TYPE_EDGE_RISING;
 } else if (is_fwnode_irqchip(domain->parent->fwnode)) {
  fwspec.fwnode = domain->parent->fwnode;
  fwspec.param_count = 2;
  fwspec.param[0] = hwirq;
  fwspec.param[1] = IRQ_TYPE_EDGE_RISING;
 } else {
  return -EINVAL;
 }

 return irq_domain_alloc_irqs_parent(domain, virq, 1, &fwspec);
}
