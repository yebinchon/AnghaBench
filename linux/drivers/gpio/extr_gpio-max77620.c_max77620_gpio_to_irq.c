
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct max77620_gpio {TYPE_1__* dev; } ;
struct max77620_chip {int gpio_irq_data; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int parent; } ;


 struct max77620_chip* dev_get_drvdata (int ) ;
 struct max77620_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int regmap_irq_get_virq (int ,unsigned int) ;

__attribute__((used)) static int max77620_gpio_to_irq(struct gpio_chip *gc, unsigned int offset)
{
 struct max77620_gpio *mgpio = gpiochip_get_data(gc);
 struct max77620_chip *chip = dev_get_drvdata(mgpio->dev->parent);

 return regmap_irq_get_virq(chip->gpio_irq_data, offset);
}
