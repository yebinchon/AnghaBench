
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kempld_gpio_data {struct kempld_device_data* pld; } ;
struct kempld_device_data {int dummy; } ;
struct gpio_chip {int dummy; } ;


 int KEMPLD_GPIO_LVL_NUM (unsigned int) ;
 struct kempld_gpio_data* gpiochip_get_data (struct gpio_chip*) ;
 int kempld_get_mutex (struct kempld_device_data*) ;
 int kempld_gpio_bitop (struct kempld_device_data*,int ,unsigned int,int) ;
 int kempld_release_mutex (struct kempld_device_data*) ;

__attribute__((used)) static void kempld_gpio_set(struct gpio_chip *chip, unsigned offset, int value)
{
 struct kempld_gpio_data *gpio = gpiochip_get_data(chip);
 struct kempld_device_data *pld = gpio->pld;

 kempld_get_mutex(pld);
 kempld_gpio_bitop(pld, KEMPLD_GPIO_LVL_NUM(offset), offset, value);
 kempld_release_mutex(pld);
}
