
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idi_48_gpio {scalar_t__ base; } ;
struct gpio_chip {int dummy; } ;


 unsigned int BIT (unsigned int) ;
 struct idi_48_gpio* gpiochip_get_data (struct gpio_chip*) ;
 unsigned int inb (scalar_t__) ;

__attribute__((used)) static int idi_48_gpio_get(struct gpio_chip *chip, unsigned offset)
{
 struct idi_48_gpio *const idi48gpio = gpiochip_get_data(chip);
 unsigned i;
 const unsigned register_offset[6] = { 0, 1, 2, 4, 5, 6 };
 unsigned base_offset;
 unsigned mask;

 for (i = 0; i < 48; i += 8)
  if (offset < i + 8) {
   base_offset = register_offset[i / 8];
   mask = BIT(offset - i);

   return !!(inb(idi48gpio->base + base_offset) & mask);
  }


 return 0;
}
