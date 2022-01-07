
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;
typedef int irq_hw_number_t ;




 int handle_fasteoi_irq ;
 int handle_percpu_devid_irq ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int irq_set_percpu_devid (unsigned int) ;
 int nps400_irq_chip_fasteoi ;
 int nps400_irq_chip_percpu ;

__attribute__((used)) static int nps400_irq_map(struct irq_domain *d, unsigned int virq,
     irq_hw_number_t hw)
{
 switch (hw) {
 case 128:



  irq_set_percpu_devid(virq);
  irq_set_chip_and_handler(virq, &nps400_irq_chip_percpu,
      handle_percpu_devid_irq);
  break;
 default:
  irq_set_chip_and_handler(virq, &nps400_irq_chip_fasteoi,
      handle_fasteoi_irq);
  break;
 }

 return 0;
}
