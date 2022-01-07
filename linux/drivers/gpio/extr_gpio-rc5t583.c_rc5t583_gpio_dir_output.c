
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
 int RC5T583_GPIO_IOSEL ;
 int RC5T583_GPIO_PGSEL ;
 struct rc5t583_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int rc5t583_clear_bits (struct device*,int ,int ) ;
 int rc5t583_gpio_set (struct gpio_chip*,unsigned int,int) ;
 int rc5t583_set_bits (struct device*,int ,int ) ;

__attribute__((used)) static int rc5t583_gpio_dir_output(struct gpio_chip *gc, unsigned offset,
   int value)
{
 struct rc5t583_gpio *rc5t583_gpio = gpiochip_get_data(gc);
 struct device *parent = rc5t583_gpio->rc5t583->dev;
 int ret;

 rc5t583_gpio_set(gc, offset, value);
 ret = rc5t583_set_bits(parent, RC5T583_GPIO_IOSEL, BIT(offset));
 if (ret < 0)
  return ret;


 return rc5t583_clear_bits(parent, RC5T583_GPIO_PGSEL, BIT(offset));
}
