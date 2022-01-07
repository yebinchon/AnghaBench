
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_desc {TYPE_1__* gdev; int flags; } ;
struct gpio_chip {int (* set_config ) (struct gpio_chip*,int,unsigned long) ;} ;
struct TYPE_2__ {int dev; struct gpio_chip* chip; } ;


 int ENOTSUPP ;
 int FLAG_TRANSITORY ;
 int PIN_CONFIG_PERSIST_STATE ;
 int VALIDATE_DESC (struct gpio_desc*) ;
 int clear_bit (int ,int *) ;
 int dev_dbg (int *,char*,int) ;
 int gpio_chip_hwgpio (struct gpio_desc*) ;
 unsigned long pinconf_to_config_packed (int ,int) ;
 int set_bit (int ,int *) ;
 int stub1 (struct gpio_chip*,int,unsigned long) ;

int gpiod_set_transitory(struct gpio_desc *desc, bool transitory)
{
 struct gpio_chip *chip;
 unsigned long packed;
 int gpio;
 int rc;

 VALIDATE_DESC(desc);




 if (transitory)
  set_bit(FLAG_TRANSITORY, &desc->flags);
 else
  clear_bit(FLAG_TRANSITORY, &desc->flags);


 chip = desc->gdev->chip;
 if (!chip->set_config)
  return 0;

 packed = pinconf_to_config_packed(PIN_CONFIG_PERSIST_STATE,
       !transitory);
 gpio = gpio_chip_hwgpio(desc);
 rc = chip->set_config(chip, gpio, packed);
 if (rc == -ENOTSUPP) {
  dev_dbg(&desc->gdev->dev, "Persistence not supported for GPIO %d\n",
    gpio);
  return 0;
 }

 return rc;
}
