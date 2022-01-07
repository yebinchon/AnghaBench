
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rc5t583_gpio {TYPE_1__* rc5t583; } ;
struct gpio_chip {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;


 int BIT (unsigned int) ;
 int RC5T583_GPIO_PGSEL ;
 struct rc5t583_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int rc5t583_set_bits (struct device*,int ,int ) ;

__attribute__((used)) static void rc5t583_gpio_free(struct gpio_chip *gc, unsigned offset)
{
 struct rc5t583_gpio *rc5t583_gpio = gpiochip_get_data(gc);
 struct device *parent = rc5t583_gpio->rc5t583->dev;

 rc5t583_set_bits(parent, RC5T583_GPIO_PGSEL, BIT(offset));
}
