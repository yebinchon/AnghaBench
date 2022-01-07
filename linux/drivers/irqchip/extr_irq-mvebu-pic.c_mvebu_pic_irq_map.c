
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvebu_pic {int irq_chip; } ;
struct irq_domain {struct mvebu_pic* host_data; } ;
typedef int irq_hw_number_t ;


 int IRQ_LEVEL ;
 int handle_percpu_devid_irq ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int irq_set_chip_data (unsigned int,struct mvebu_pic*) ;
 int irq_set_percpu_devid (unsigned int) ;
 int irq_set_probe (unsigned int) ;
 int irq_set_status_flags (unsigned int,int ) ;

__attribute__((used)) static int mvebu_pic_irq_map(struct irq_domain *domain, unsigned int virq,
        irq_hw_number_t hwirq)
{
 struct mvebu_pic *pic = domain->host_data;

 irq_set_percpu_devid(virq);
 irq_set_chip_data(virq, pic);
 irq_set_chip_and_handler(virq, &pic->irq_chip,
     handle_percpu_devid_irq);
 irq_set_status_flags(virq, IRQ_LEVEL);
 irq_set_probe(virq);

 return 0;
}
