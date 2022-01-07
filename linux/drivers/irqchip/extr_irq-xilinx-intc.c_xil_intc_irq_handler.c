
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct irq_desc {int dummy; } ;
struct irq_chip {int dummy; } ;


 int chained_irq_enter (struct irq_chip*,struct irq_desc*) ;
 int chained_irq_exit (struct irq_chip*,struct irq_desc*) ;
 int generic_handle_irq (unsigned int) ;
 struct irq_chip* irq_desc_get_chip (struct irq_desc*) ;
 unsigned int xintc_get_irq () ;

__attribute__((used)) static void xil_intc_irq_handler(struct irq_desc *desc)
{
 struct irq_chip *chip = irq_desc_get_chip(desc);
 u32 pending;

 chained_irq_enter(chip, desc);
 do {
  pending = xintc_get_irq();
  if (pending == -1U)
   break;
  generic_handle_irq(pending);
 } while (1);
 chained_irq_exit(chip, desc);
}
