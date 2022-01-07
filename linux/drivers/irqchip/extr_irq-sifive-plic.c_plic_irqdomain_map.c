
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;
typedef int irq_hw_number_t ;


 int handle_fasteoi_irq ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int irq_set_chip_data (unsigned int,int *) ;
 int irq_set_noprobe (unsigned int) ;
 int plic_chip ;

__attribute__((used)) static int plic_irqdomain_map(struct irq_domain *d, unsigned int irq,
         irq_hw_number_t hwirq)
{
 irq_set_chip_and_handler(irq, &plic_chip, handle_fasteoi_irq);
 irq_set_chip_data(irq, ((void*)0));
 irq_set_noprobe(irq);
 return 0;
}
