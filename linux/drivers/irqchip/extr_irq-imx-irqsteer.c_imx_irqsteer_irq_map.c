
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int host_data; } ;
typedef int irq_hw_number_t ;


 int IRQ_LEVEL ;
 int handle_level_irq ;
 int imx_irqsteer_irq_chip ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int irq_set_chip_data (unsigned int,int ) ;
 int irq_set_status_flags (unsigned int,int ) ;

__attribute__((used)) static int imx_irqsteer_irq_map(struct irq_domain *h, unsigned int irq,
    irq_hw_number_t hwirq)
{
 irq_set_status_flags(irq, IRQ_LEVEL);
 irq_set_chip_data(irq, h->host_data);
 irq_set_chip_and_handler(irq, &imx_irqsteer_irq_chip, handle_level_irq);

 return 0;
}
