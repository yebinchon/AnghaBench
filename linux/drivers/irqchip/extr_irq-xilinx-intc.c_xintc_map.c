
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_domain {int dummy; } ;
typedef int irq_hw_number_t ;
struct TYPE_2__ {int intr_mask; } ;


 int IRQ_LEVEL ;
 int handle_edge_irq ;
 int handle_level_irq ;
 int intc_dev ;
 int irq_clear_status_flags (unsigned int,int ) ;
 int irq_set_chip_and_handler_name (unsigned int,int *,int ,char*) ;
 int irq_set_status_flags (unsigned int,int ) ;
 TYPE_1__* xintc_irqc ;

__attribute__((used)) static int xintc_map(struct irq_domain *d, unsigned int irq, irq_hw_number_t hw)
{
 if (xintc_irqc->intr_mask & (1 << hw)) {
  irq_set_chip_and_handler_name(irq, &intc_dev,
      handle_edge_irq, "edge");
  irq_clear_status_flags(irq, IRQ_LEVEL);
 } else {
  irq_set_chip_and_handler_name(irq, &intc_dev,
      handle_level_irq, "level");
  irq_set_status_flags(irq, IRQ_LEVEL);
 }
 return 0;
}
