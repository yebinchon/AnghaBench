
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 int LOONGSON_GPIOIE ;
 int gpio_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int loongson_gpio_direction_input(struct gpio_chip *chip, unsigned gpio)
{
 u32 temp;

 spin_lock(&gpio_lock);
 temp = LOONGSON_GPIOIE;
 temp |= BIT(gpio);
 LOONGSON_GPIOIE = temp;
 spin_unlock(&gpio_lock);

 return 0;
}
