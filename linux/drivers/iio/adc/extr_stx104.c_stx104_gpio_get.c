
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stx104_gpio {int base; } ;
struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 int EINVAL ;
 struct stx104_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int inb (int ) ;

__attribute__((used)) static int stx104_gpio_get(struct gpio_chip *chip, unsigned int offset)
{
 struct stx104_gpio *const stx104gpio = gpiochip_get_data(chip);

 if (offset >= 4)
  return -EINVAL;

 return !!(inb(stx104gpio->base) & BIT(offset));
}
