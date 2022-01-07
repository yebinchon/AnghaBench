
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
struct thunderx_gpio {scalar_t__ register_base; } ;
struct gpio_chip {int ngpio; } ;


 int GPIO_2ND_BANK ;
 scalar_t__ GPIO_TX_CLR ;
 scalar_t__ GPIO_TX_SET ;
 struct thunderx_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int writeq (unsigned long,scalar_t__) ;

__attribute__((used)) static void thunderx_gpio_set_multiple(struct gpio_chip *chip,
           unsigned long *mask,
           unsigned long *bits)
{
 int bank;
 u64 set_bits, clear_bits;
 struct thunderx_gpio *txgpio = gpiochip_get_data(chip);

 for (bank = 0; bank <= chip->ngpio / 64; bank++) {
  set_bits = bits[bank] & mask[bank];
  clear_bits = ~bits[bank] & mask[bank];
  writeq(set_bits, txgpio->register_base + (bank * GPIO_2ND_BANK) + GPIO_TX_SET);
  writeq(clear_bits, txgpio->register_base + (bank * GPIO_2ND_BANK) + GPIO_TX_CLR);
 }
}
