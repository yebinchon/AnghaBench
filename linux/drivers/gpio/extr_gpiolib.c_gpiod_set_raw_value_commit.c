
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_desc {TYPE_1__* gdev; } ;
struct gpio_chip {int (* set ) (struct gpio_chip*,int ,int) ;} ;
struct TYPE_2__ {struct gpio_chip* chip; } ;


 int desc_to_gpio (struct gpio_desc*) ;
 int gpio_chip_hwgpio (struct gpio_desc*) ;
 int stub1 (struct gpio_chip*,int ,int) ;
 int trace_gpio_value (int ,int ,int) ;

__attribute__((used)) static void gpiod_set_raw_value_commit(struct gpio_desc *desc, bool value)
{
 struct gpio_chip *chip;

 chip = desc->gdev->chip;
 trace_gpio_value(desc_to_gpio(desc), 0, value);
 chip->set(chip, gpio_chip_hwgpio(desc), value);
}
