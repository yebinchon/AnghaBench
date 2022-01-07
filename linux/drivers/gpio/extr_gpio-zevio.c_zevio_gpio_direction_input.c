
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zevio_gpio {int lock; } ;
struct gpio_chip {int dummy; } ;


 int BIT (int ) ;
 int ZEVIO_GPIO_BIT (unsigned int) ;
 int ZEVIO_GPIO_DIRECTION ;
 struct zevio_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int zevio_gpio_port_get (struct zevio_gpio*,unsigned int,int ) ;
 int zevio_gpio_port_set (struct zevio_gpio*,unsigned int,int ,int ) ;

__attribute__((used)) static int zevio_gpio_direction_input(struct gpio_chip *chip, unsigned pin)
{
 struct zevio_gpio *controller = gpiochip_get_data(chip);
 u32 val;

 spin_lock(&controller->lock);

 val = zevio_gpio_port_get(controller, pin, ZEVIO_GPIO_DIRECTION);
 val |= BIT(ZEVIO_GPIO_BIT(pin));
 zevio_gpio_port_set(controller, pin, ZEVIO_GPIO_DIRECTION, val);

 spin_unlock(&controller->lock);

 return 0;
}
