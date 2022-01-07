
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sch311x_gpio_block {int lock; scalar_t__* config_regs; scalar_t__ runtime_reg; } ;
struct gpio_chip {int dummy; } ;


 int SCH311X_GPIO_CONF_DIR ;
 int __sch311x_gpio_set (struct sch311x_gpio_block*,unsigned int,int) ;
 struct sch311x_gpio_block* gpiochip_get_data (struct gpio_chip*) ;
 int inb (scalar_t__) ;
 int outb (int ,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int sch311x_gpio_direction_out(struct gpio_chip *chip, unsigned offset,
          int value)
{
 struct sch311x_gpio_block *block = gpiochip_get_data(chip);
 u8 data;

 spin_lock(&block->lock);

 data = inb(block->runtime_reg + block->config_regs[offset]);
 data &= ~SCH311X_GPIO_CONF_DIR;
 outb(data, block->runtime_reg + block->config_regs[offset]);
 __sch311x_gpio_set(block, offset, value);

 spin_unlock(&block->lock);
 return 0;
}
