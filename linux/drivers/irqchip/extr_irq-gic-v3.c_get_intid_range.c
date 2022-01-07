
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int hwirq; } ;
typedef enum gic_intid_range { ____Placeholder_gic_intid_range } gic_intid_range ;


 int __get_intid_range (int ) ;

__attribute__((used)) static enum gic_intid_range get_intid_range(struct irq_data *d)
{
 return __get_intid_range(d->hwirq);
}
