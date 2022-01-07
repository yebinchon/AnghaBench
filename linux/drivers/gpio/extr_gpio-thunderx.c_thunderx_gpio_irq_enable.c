
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int irq_chip_enable_parent (struct irq_data*) ;
 int thunderx_gpio_irq_unmask (struct irq_data*) ;

__attribute__((used)) static void thunderx_gpio_irq_enable(struct irq_data *data)
{
 irq_chip_enable_parent(data);
 thunderx_gpio_irq_unmask(data);
}
