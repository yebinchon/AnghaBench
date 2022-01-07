
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp3943_gpio {struct lp3943* lp3943; } ;
struct lp3943 {int pin_used; } ;
struct gpio_chip {int dummy; } ;


 int EBUSY ;
 struct lp3943_gpio* gpiochip_get_data (struct gpio_chip*) ;
 scalar_t__ test_and_set_bit (unsigned int,int *) ;

__attribute__((used)) static int lp3943_gpio_request(struct gpio_chip *chip, unsigned offset)
{
 struct lp3943_gpio *lp3943_gpio = gpiochip_get_data(chip);
 struct lp3943 *lp3943 = lp3943_gpio->lp3943;


 if (test_and_set_bit(offset, &lp3943->pin_used))
  return -EBUSY;

 return 0;
}
