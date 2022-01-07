
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int hwirq; } ;


 int sa11x0_sc_set_wake (int ,unsigned int) ;

__attribute__((used)) static int sa1100_set_wake(struct irq_data *d, unsigned int on)
{
 return sa11x0_sc_set_wake(d->hwirq, on);
}
