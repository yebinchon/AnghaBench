
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_desc {int dummy; } ;
struct gpio_chip {int dummy; } ;
struct aspeed_gpio_bank {int dummy; } ;
struct TYPE_2__ {int ngpio; } ;
struct aspeed_gpio {scalar_t__* cf_copro_bankmap; int lock; TYPE_1__ chip; } ;


 int EINVAL ;
 int EIO ;
 int ENXIO ;
 int GPIO_CMDSRC_ARM ;
 int aspeed_gpio_change_cmd_source (struct aspeed_gpio*,struct aspeed_gpio_bank const*,int,int ) ;
 int gpio_chip_hwgpio (struct gpio_desc*) ;
 struct aspeed_gpio* gpiochip_get_data (struct gpio_chip*) ;
 struct gpio_chip* gpiod_to_chip (struct gpio_desc*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct aspeed_gpio_bank* to_bank (int) ;

int aspeed_gpio_copro_release_gpio(struct gpio_desc *desc)
{
 struct gpio_chip *chip = gpiod_to_chip(desc);
 struct aspeed_gpio *gpio = gpiochip_get_data(chip);
 int rc = 0, bindex, offset = gpio_chip_hwgpio(desc);
 const struct aspeed_gpio_bank *bank = to_bank(offset);
 unsigned long flags;

 if (!gpio->cf_copro_bankmap)
  return -ENXIO;

 if (offset < 0 || offset > gpio->chip.ngpio)
  return -EINVAL;
 bindex = offset >> 3;

 spin_lock_irqsave(&gpio->lock, flags);


 if (gpio->cf_copro_bankmap[bindex] == 0) {
  rc = -EIO;
  goto bail;
 }
 gpio->cf_copro_bankmap[bindex]--;


 if (gpio->cf_copro_bankmap[bindex] == 0)
  aspeed_gpio_change_cmd_source(gpio, bank, bindex,
           GPIO_CMDSRC_ARM);
 bail:
 spin_unlock_irqrestore(&gpio->lock, flags);
 return rc;
}
