
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmpe_gpio {int norequest_mask; struct stmpe* stmpe; } ;
struct stmpe {int dummy; } ;
struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 int EINVAL ;
 int STMPE_BLOCK_GPIO ;
 struct stmpe_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int stmpe_set_altfunc (struct stmpe*,int,int ) ;

__attribute__((used)) static int stmpe_gpio_request(struct gpio_chip *chip, unsigned offset)
{
 struct stmpe_gpio *stmpe_gpio = gpiochip_get_data(chip);
 struct stmpe *stmpe = stmpe_gpio->stmpe;

 if (stmpe_gpio->norequest_mask & BIT(offset))
  return -EINVAL;

 return stmpe_set_altfunc(stmpe, BIT(offset), STMPE_BLOCK_GPIO);
}
