
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps6586x_gpio {int parent; } ;
struct gpio_chip {int dummy; } ;


 unsigned int TPS6586X_INT_PLDO_0 ;
 struct tps6586x_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int tps6586x_irq_get_virq (int ,unsigned int) ;

__attribute__((used)) static int tps6586x_gpio_to_irq(struct gpio_chip *gc, unsigned offset)
{
 struct tps6586x_gpio *tps6586x_gpio = gpiochip_get_data(gc);

 return tps6586x_irq_get_virq(tps6586x_gpio->parent,
    TPS6586X_INT_PLDO_0 + offset);
}
