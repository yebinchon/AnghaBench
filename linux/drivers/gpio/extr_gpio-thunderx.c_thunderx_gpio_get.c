
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct thunderx_gpio {int invert_mask; scalar_t__ register_base; } ;
struct gpio_chip {int dummy; } ;


 scalar_t__ BIT_ULL (int) ;
 int GPIO_2ND_BANK ;
 scalar_t__ GPIO_RX_DAT ;
 struct thunderx_gpio* gpiochip_get_data (struct gpio_chip*) ;
 scalar_t__ readq (scalar_t__) ;
 scalar_t__ test_bit (unsigned int,int ) ;

__attribute__((used)) static int thunderx_gpio_get(struct gpio_chip *chip, unsigned int line)
{
 struct thunderx_gpio *txgpio = gpiochip_get_data(chip);
 int bank = line / 64;
 int bank_bit = line % 64;
 u64 read_bits = readq(txgpio->register_base + (bank * GPIO_2ND_BANK) + GPIO_RX_DAT);
 u64 masked_bits = read_bits & BIT_ULL(bank_bit);

 if (test_bit(line, txgpio->invert_mask))
  return masked_bits == 0;
 else
  return masked_bits != 0;
}
