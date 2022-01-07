
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int hwirq; } ;


 int intclear ;
 int xtensa_set_sr (int,int ) ;

__attribute__((used)) static void xtensa_irq_ack(struct irq_data *d)
{
 xtensa_set_sr(1 << d->hwirq, intclear);
}
