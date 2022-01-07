
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int hwirq; } ;


 int cpu_possible_mask ;
 int plic_irq_toggle (int ,int ,int ) ;

__attribute__((used)) static void plic_irq_mask(struct irq_data *d)
{
 plic_irq_toggle(cpu_possible_mask, d->hwirq, 0);
}
