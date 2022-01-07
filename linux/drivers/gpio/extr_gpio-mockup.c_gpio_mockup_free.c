
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_mockup_chip {TYPE_1__* lines; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int pull; } ;


 int __gpio_mockup_set (struct gpio_mockup_chip*,unsigned int,int ) ;
 struct gpio_mockup_chip* gpiochip_get_data (struct gpio_chip*) ;

__attribute__((used)) static void gpio_mockup_free(struct gpio_chip *gc, unsigned int offset)
{
 struct gpio_mockup_chip *chip = gpiochip_get_data(gc);

 __gpio_mockup_set(chip, offset, chip->lines[offset].pull);
}
