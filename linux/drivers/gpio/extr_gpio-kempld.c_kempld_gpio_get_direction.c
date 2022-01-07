
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kempld_gpio_data {struct kempld_device_data* pld; } ;
struct kempld_device_data {int dummy; } ;
struct gpio_chip {int dummy; } ;


 int KEMPLD_GPIO_DIR_NUM (unsigned int) ;
 struct kempld_gpio_data* gpiochip_get_data (struct gpio_chip*) ;
 int kempld_gpio_get_bit (struct kempld_device_data*,int ,unsigned int) ;

__attribute__((used)) static int kempld_gpio_get_direction(struct gpio_chip *chip, unsigned offset)
{
 struct kempld_gpio_data *gpio = gpiochip_get_data(chip);
 struct kempld_device_data *pld = gpio->pld;

 return !kempld_gpio_get_bit(pld, KEMPLD_GPIO_DIR_NUM(offset), offset);
}
