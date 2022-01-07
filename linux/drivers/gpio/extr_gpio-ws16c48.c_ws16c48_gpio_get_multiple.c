
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ws16c48_gpio {scalar_t__ base; } ;
struct gpio_chip {unsigned int const ngpio; } ;


 unsigned int BITS_PER_LONG ;
 size_t BIT_WORD (unsigned int) ;
 unsigned long GENMASK (unsigned int const,int ) ;
 int bitmap_zero (unsigned long*,unsigned int const) ;
 struct ws16c48_gpio* gpiochip_get_data (struct gpio_chip*) ;
 unsigned long inb (scalar_t__) ;

__attribute__((used)) static int ws16c48_gpio_get_multiple(struct gpio_chip *chip,
 unsigned long *mask, unsigned long *bits)
{
 struct ws16c48_gpio *const ws16c48gpio = gpiochip_get_data(chip);
 const unsigned int gpio_reg_size = 8;
 size_t i;
 const size_t num_ports = chip->ngpio / gpio_reg_size;
 unsigned int bits_offset;
 size_t word_index;
 unsigned int word_offset;
 unsigned long word_mask;
 const unsigned long port_mask = GENMASK(gpio_reg_size - 1, 0);
 unsigned long port_state;


 bitmap_zero(bits, chip->ngpio);


 for (i = 0; i < num_ports; i++) {

  bits_offset = i * gpio_reg_size;


  word_index = BIT_WORD(bits_offset);


  word_offset = bits_offset % BITS_PER_LONG;


  word_mask = mask[word_index] & (port_mask << word_offset);
  if (!word_mask) {

   continue;
  }


  port_state = inb(ws16c48gpio->base + i);


  bits[word_index] |= (port_state << word_offset) & word_mask;
 }

 return 0;
}
