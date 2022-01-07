
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 int LOONGSON_GPIODATA ;
 unsigned int LOONGSON_GPIO_IN_OFFSET ;
 int gpio_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int loongson_gpio_get_value(struct gpio_chip *chip, unsigned gpio)
{
 u32 val;

 spin_lock(&gpio_lock);
 val = LOONGSON_GPIODATA;
 spin_unlock(&gpio_lock);

 return !!(val & BIT(gpio + LOONGSON_GPIO_IN_OFFSET));
}
