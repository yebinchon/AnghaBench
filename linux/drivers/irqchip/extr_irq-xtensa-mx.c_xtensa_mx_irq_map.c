
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {struct irq_chip* host_data; } ;
struct irq_chip {int dummy; } ;
typedef scalar_t__ irq_hw_number_t ;


 scalar_t__ HW_IRQ_IPI_COUNT ;
 int IRQ_LEVEL ;
 int handle_percpu_irq ;
 int irq_desc_get_irq_data (int ) ;
 int irq_set_chip_and_handler_name (unsigned int,struct irq_chip*,int ,char*) ;
 int irq_set_status_flags (unsigned int,int ) ;
 int irq_to_desc (unsigned int) ;
 int irqd_set_single_target (int ) ;
 int xtensa_irq_map (struct irq_domain*,unsigned int,scalar_t__) ;

__attribute__((used)) static int xtensa_mx_irq_map(struct irq_domain *d, unsigned int irq,
  irq_hw_number_t hw)
{
 if (hw < HW_IRQ_IPI_COUNT) {
  struct irq_chip *irq_chip = d->host_data;
  irq_set_chip_and_handler_name(irq, irq_chip,
    handle_percpu_irq, "ipi");
  irq_set_status_flags(irq, IRQ_LEVEL);
  return 0;
 }
 irqd_set_single_target(irq_desc_get_irq_data(irq_to_desc(irq)));
 return xtensa_irq_map(d, irq, hw);
}
