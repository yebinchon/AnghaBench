
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;
typedef scalar_t__ irq_hw_number_t ;


 scalar_t__ COMM_IRQ_BASE ;
 int csky_irq_chip ;
 int handle_fasteoi_irq ;
 int handle_percpu_irq ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int irq_set_percpu_devid (unsigned int) ;

__attribute__((used)) static int csky_irqdomain_map(struct irq_domain *d, unsigned int irq,
         irq_hw_number_t hwirq)
{
 if (hwirq < COMM_IRQ_BASE) {
  irq_set_percpu_devid(irq);
  irq_set_chip_and_handler(irq, &csky_irq_chip,
      handle_percpu_irq);
 } else {
  irq_set_chip_and_handler(irq, &csky_irq_chip,
      handle_fasteoi_irq);
 }

 return 0;
}
