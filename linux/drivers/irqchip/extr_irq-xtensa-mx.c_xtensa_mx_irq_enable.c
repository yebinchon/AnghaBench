
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int xtensa_mx_irq_unmask (struct irq_data*) ;

__attribute__((used)) static void xtensa_mx_irq_enable(struct irq_data *d)
{
 xtensa_mx_irq_unmask(d);
}
