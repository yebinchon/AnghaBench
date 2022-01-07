
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;
struct irq_desc {int dummy; } ;


 int generic_handle_irq (int ) ;
 struct irq_domain* irq_desc_get_handler_data (struct irq_desc*) ;
 unsigned int irq_desc_get_irq (struct irq_desc*) ;
 int irq_find_mapping (struct irq_domain*,unsigned int) ;

__attribute__((used)) static void tb10x_irq_cascade(struct irq_desc *desc)
{
 struct irq_domain *domain = irq_desc_get_handler_data(desc);
 unsigned int irq = irq_desc_get_irq(desc);

 generic_handle_irq(irq_find_mapping(domain, irq));
}
