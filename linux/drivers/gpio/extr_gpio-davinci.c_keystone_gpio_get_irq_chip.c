
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_chip {int dummy; } ;


 struct irq_chip* irq_get_chip (unsigned int) ;

__attribute__((used)) static struct irq_chip *keystone_gpio_get_irq_chip(unsigned int irq)
{
 static struct irq_chip gpio_unbanked;

 gpio_unbanked = *irq_get_chip(irq);
 return &gpio_unbanked;
}
