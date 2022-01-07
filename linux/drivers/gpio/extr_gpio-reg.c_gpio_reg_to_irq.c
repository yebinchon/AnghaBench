
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_reg {int* irqs; scalar_t__ irqdomain; } ;
struct gpio_chip {int dummy; } ;


 int irq_find_mapping (scalar_t__,int) ;
 struct gpio_reg* to_gpio_reg (struct gpio_chip*) ;

__attribute__((used)) static int gpio_reg_to_irq(struct gpio_chip *gc, unsigned offset)
{
 struct gpio_reg *r = to_gpio_reg(gc);
 int irq = r->irqs[offset];

 if (irq >= 0 && r->irqdomain)
  irq = irq_find_mapping(r->irqdomain, irq);

 return irq;
}
