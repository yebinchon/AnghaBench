
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int altera_gpio_irq_unmask (struct irq_data*) ;

__attribute__((used)) static unsigned int altera_gpio_irq_startup(struct irq_data *d)
{
 altera_gpio_irq_unmask(d);

 return 0;
}
