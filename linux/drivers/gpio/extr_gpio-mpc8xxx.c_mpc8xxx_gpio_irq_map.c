
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int host_data; } ;
typedef int irq_hw_number_t ;


 int handle_edge_irq ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int irq_set_chip_data (unsigned int,int ) ;
 int mpc8xxx_irq_chip ;

__attribute__((used)) static int mpc8xxx_gpio_irq_map(struct irq_domain *h, unsigned int irq,
    irq_hw_number_t hwirq)
{
 irq_set_chip_data(irq, h->host_data);
 irq_set_chip_and_handler(irq, &mpc8xxx_irq_chip, handle_edge_irq);

 return 0;
}
