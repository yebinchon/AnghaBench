
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_chip {int dummy; } ;
struct irq_chip_type {struct irq_chip chip; } ;


 struct irq_chip_type* irq_data_get_chip_type (int ) ;
 int irq_get_irq_data (unsigned int) ;

__attribute__((used)) static struct irq_chip *davinci_gpio_get_irq_chip(unsigned int irq)
{
 static struct irq_chip_type gpio_unbanked;

 gpio_unbanked = *irq_data_get_chip_type(irq_get_irq_data(irq));

 return &gpio_unbanked.chip;
}
