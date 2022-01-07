
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;
typedef int irq_hw_number_t ;


 int h8300h_irq_chip ;
 int handle_simple_irq ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;

__attribute__((used)) static int irq_map(struct irq_domain *h, unsigned int virq,
     irq_hw_number_t hw_irq_num)
{
       irq_set_chip_and_handler(virq, &h8300h_irq_chip, handle_simple_irq);

       return 0;
}
