
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct plic_handler {scalar_t__ hart_base; } ;
struct irq_data {int hwirq; } ;


 scalar_t__ CONTEXT_CLAIM ;
 int plic_handlers ;
 struct plic_handler* this_cpu_ptr (int *) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void plic_irq_eoi(struct irq_data *d)
{
 struct plic_handler *handler = this_cpu_ptr(&plic_handlers);

 writel(d->hwirq, handler->hart_base + CONTEXT_CLAIM);
}
