
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;
struct dln2_gpio {int pdev; } ;
typedef int duration ;
typedef int __le32 ;


 int DLN2_GPIO_SET_DEBOUNCE ;
 int ENOTSUPP ;
 scalar_t__ PIN_CONFIG_INPUT_DEBOUNCE ;
 int cpu_to_le32 (int ) ;
 int dln2_transfer_tx (int ,int ,int *,int) ;
 struct dln2_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int pinconf_to_config_argument (unsigned long) ;
 scalar_t__ pinconf_to_config_param (unsigned long) ;

__attribute__((used)) static int dln2_gpio_set_config(struct gpio_chip *chip, unsigned offset,
    unsigned long config)
{
 struct dln2_gpio *dln2 = gpiochip_get_data(chip);
 __le32 duration;

 if (pinconf_to_config_param(config) != PIN_CONFIG_INPUT_DEBOUNCE)
  return -ENOTSUPP;

 duration = cpu_to_le32(pinconf_to_config_argument(config));
 return dln2_transfer_tx(dln2->pdev, DLN2_GPIO_SET_DEBOUNCE,
    &duration, sizeof(duration));
}
