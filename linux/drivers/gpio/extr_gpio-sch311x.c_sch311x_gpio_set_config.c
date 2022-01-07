
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sch311x_gpio_block {int lock; scalar_t__* config_regs; scalar_t__ runtime_reg; } ;
struct gpio_chip {int dummy; } ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;


 int ENOTSUPP ;


 int SCH311X_GPIO_CONF_OPEN_DRAIN ;
 struct sch311x_gpio_block* gpiochip_get_data (struct gpio_chip*) ;
 int inb (scalar_t__) ;
 int outb (int ,scalar_t__) ;
 int pinconf_to_config_param (unsigned long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int sch311x_gpio_set_config(struct gpio_chip *chip, unsigned offset,
       unsigned long config)
{
 struct sch311x_gpio_block *block = gpiochip_get_data(chip);
 enum pin_config_param param = pinconf_to_config_param(config);
 u8 data;

 switch (param) {
 case 129:
  spin_lock(&block->lock);
  data = inb(block->runtime_reg + block->config_regs[offset]);
  data |= SCH311X_GPIO_CONF_OPEN_DRAIN;
  outb(data, block->runtime_reg + block->config_regs[offset]);
  spin_unlock(&block->lock);
  return 0;
 case 128:
  spin_lock(&block->lock);
  data = inb(block->runtime_reg + block->config_regs[offset]);
  data &= ~SCH311X_GPIO_CONF_OPEN_DRAIN;
  outb(data, block->runtime_reg + block->config_regs[offset]);
  spin_unlock(&block->lock);
  return 0;
 default:
  break;
 }
 return -ENOTSUPP;
}
