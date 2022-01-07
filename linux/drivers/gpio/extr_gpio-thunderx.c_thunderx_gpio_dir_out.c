
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct thunderx_gpio {int lock; scalar_t__ register_base; int od_mask; int invert_mask; TYPE_1__* line_entries; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int fil_bits; } ;


 int EIO ;
 int GPIO_BIT_CFG_PIN_XOR ;
 int GPIO_BIT_CFG_TX_OD ;
 int GPIO_BIT_CFG_TX_OE ;
 scalar_t__ bit_cfg_reg (unsigned int) ;
 struct thunderx_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;
 scalar_t__ test_bit (unsigned int,int ) ;
 int thunderx_gpio_is_gpio (struct thunderx_gpio*,unsigned int) ;
 int thunderx_gpio_set (struct gpio_chip*,unsigned int,int) ;
 int writeq (int,scalar_t__) ;

__attribute__((used)) static int thunderx_gpio_dir_out(struct gpio_chip *chip, unsigned int line,
     int value)
{
 struct thunderx_gpio *txgpio = gpiochip_get_data(chip);
 u64 bit_cfg = txgpio->line_entries[line].fil_bits | GPIO_BIT_CFG_TX_OE;

 if (!thunderx_gpio_is_gpio(txgpio, line))
  return -EIO;

 raw_spin_lock(&txgpio->lock);

 thunderx_gpio_set(chip, line, value);

 if (test_bit(line, txgpio->invert_mask))
  bit_cfg |= GPIO_BIT_CFG_PIN_XOR;

 if (test_bit(line, txgpio->od_mask))
  bit_cfg |= GPIO_BIT_CFG_TX_OD;

 writeq(bit_cfg, txgpio->register_base + bit_cfg_reg(line));

 raw_spin_unlock(&txgpio->lock);
 return 0;
}
