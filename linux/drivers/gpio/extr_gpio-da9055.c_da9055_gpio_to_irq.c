
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct gpio_chip {int dummy; } ;
struct da9055_gpio {struct da9055* da9055; } ;
struct da9055 {int irq_data; } ;


 scalar_t__ DA9055_IRQ_GPI0 ;
 struct da9055_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int regmap_irq_get_virq (int ,scalar_t__) ;

__attribute__((used)) static int da9055_gpio_to_irq(struct gpio_chip *gc, u32 offset)
{
 struct da9055_gpio *gpio = gpiochip_get_data(gc);
 struct da9055 *da9055 = gpio->da9055;

 return regmap_irq_get_virq(da9055->irq_data,
      DA9055_IRQ_GPI0 + offset);
}
