
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;
struct irq_desc {int dummy; } ;
struct irq_chip {int dummy; } ;


 int chained_irq_enter (struct irq_chip*,struct irq_desc*) ;
 int chained_irq_exit (struct irq_chip*,struct irq_desc*) ;
 int generic_handle_irq (unsigned int) ;
 struct irq_chip* irq_desc_get_chip (struct irq_desc*) ;
 struct irq_domain* irq_desc_get_handler_data (struct irq_desc*) ;
 unsigned int irq_find_mapping (struct irq_domain*,int ) ;

__attribute__((used)) static void sunxi_sc_nmi_handle_irq(struct irq_desc *desc)
{
 struct irq_domain *domain = irq_desc_get_handler_data(desc);
 struct irq_chip *chip = irq_desc_get_chip(desc);
 unsigned int virq = irq_find_mapping(domain, 0);

 chained_irq_enter(chip, desc);
 generic_handle_irq(virq);
 chained_irq_exit(chip, desc);
}
