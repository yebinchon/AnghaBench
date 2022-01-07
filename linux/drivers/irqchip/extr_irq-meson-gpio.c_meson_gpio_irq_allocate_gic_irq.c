
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct irq_fwspec {int param_count; scalar_t__* param; int fwnode; } ;
struct irq_domain {TYPE_1__* parent; } ;
struct TYPE_2__ {int fwnode; } ;


 int irq_domain_alloc_irqs_parent (struct irq_domain*,unsigned int,int,struct irq_fwspec*) ;
 scalar_t__ meson_gpio_irq_type_output (unsigned int) ;

__attribute__((used)) static int meson_gpio_irq_allocate_gic_irq(struct irq_domain *domain,
        unsigned int virq,
        u32 hwirq,
        unsigned int type)
{
 struct irq_fwspec fwspec;

 fwspec.fwnode = domain->parent->fwnode;
 fwspec.param_count = 3;
 fwspec.param[0] = 0;
 fwspec.param[1] = hwirq;
 fwspec.param[2] = meson_gpio_irq_type_output(type);

 return irq_domain_alloc_irqs_parent(domain, virq, 1, &fwspec);
}
