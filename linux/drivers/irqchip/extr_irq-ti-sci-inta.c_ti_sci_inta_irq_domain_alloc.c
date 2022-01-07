
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_domain {int dummy; } ;
struct TYPE_2__ {int hwirq; } ;
typedef TYPE_1__ msi_alloc_info_t ;


 int handle_edge_irq ;
 int irq_domain_set_info (struct irq_domain*,unsigned int,int ,int *,int *,int ,int *,int *) ;
 int ti_sci_inta_irq_chip ;

__attribute__((used)) static int ti_sci_inta_irq_domain_alloc(struct irq_domain *domain,
     unsigned int virq, unsigned int nr_irqs,
     void *data)
{
 msi_alloc_info_t *arg = data;

 irq_domain_set_info(domain, virq, arg->hwirq, &ti_sci_inta_irq_chip,
       ((void*)0), handle_edge_irq, ((void*)0), ((void*)0));

 return 0;
}
