
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;
typedef int irq_hw_number_t ;


 int davinci_cp_intc_irq_chip ;
 int handle_edge_irq ;
 int irq_set_chip (unsigned int,int *) ;
 int irq_set_handler (unsigned int,int ) ;
 int irq_set_probe (unsigned int) ;
 int pr_debug (char*,unsigned int,int ) ;

__attribute__((used)) static int davinci_cp_intc_host_map(struct irq_domain *h, unsigned int virq,
     irq_hw_number_t hw)
{
 pr_debug("cp_intc_host_map(%d, 0x%lx)\n", virq, hw);

 irq_set_chip(virq, &davinci_cp_intc_irq_chip);
 irq_set_probe(virq);
 irq_set_handler(virq, handle_edge_irq);

 return 0;
}
