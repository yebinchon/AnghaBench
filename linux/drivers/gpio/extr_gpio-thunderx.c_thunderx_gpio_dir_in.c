
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thunderx_gpio {int lock; scalar_t__ register_base; TYPE_1__* line_entries; int od_mask; int invert_mask; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int fil_bits; } ;


 int EIO ;
 scalar_t__ bit_cfg_reg (unsigned int) ;
 int clear_bit (unsigned int,int ) ;
 struct thunderx_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;
 int thunderx_gpio_is_gpio (struct thunderx_gpio*,unsigned int) ;
 int writeq (int ,scalar_t__) ;

__attribute__((used)) static int thunderx_gpio_dir_in(struct gpio_chip *chip, unsigned int line)
{
 struct thunderx_gpio *txgpio = gpiochip_get_data(chip);

 if (!thunderx_gpio_is_gpio(txgpio, line))
  return -EIO;

 raw_spin_lock(&txgpio->lock);
 clear_bit(line, txgpio->invert_mask);
 clear_bit(line, txgpio->od_mask);
 writeq(txgpio->line_entries[line].fil_bits,
        txgpio->register_base + bit_cfg_reg(line));
 raw_spin_unlock(&txgpio->lock);
 return 0;
}
