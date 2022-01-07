
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gpio_chip {int dummy; } ;
struct TYPE_4__ {TYPE_1__* desc; } ;
struct TYPE_3__ {int* use_sel_ignore; } ;


 int BIT (unsigned int) ;
 int ENODEV ;
 int ENXIO ;
 int GPIO_USE_SEL ;
 int ichx_gpio_check_available (struct gpio_chip*,unsigned int) ;
 TYPE_2__ ichx_priv ;
 scalar_t__ ichx_read_bit (int ,unsigned int) ;

__attribute__((used)) static int ichx_gpio_request(struct gpio_chip *chip, unsigned nr)
{
 if (!ichx_gpio_check_available(chip, nr))
  return -ENXIO;







 if (ichx_priv.desc->use_sel_ignore[nr / 32] & BIT(nr & 0x1f))
  return 0;

 return ichx_read_bit(GPIO_USE_SEL, nr) ? 0 : -ENODEV;
}
