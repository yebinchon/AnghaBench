
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pisosr_gpio {scalar_t__* buffer; } ;
struct gpio_chip {int ngpio; } ;


 unsigned int DIV_ROUND_UP (int ,int) ;
 int bitmap_zero (unsigned long*,int ) ;
 struct pisosr_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int pisosr_gpio_refresh (struct pisosr_gpio*) ;

__attribute__((used)) static int pisosr_gpio_get_multiple(struct gpio_chip *chip,
        unsigned long *mask, unsigned long *bits)
{
 struct pisosr_gpio *gpio = gpiochip_get_data(chip);
 unsigned int nbytes = DIV_ROUND_UP(chip->ngpio, 8);
 unsigned int i, j;

 pisosr_gpio_refresh(gpio);

 bitmap_zero(bits, chip->ngpio);
 for (i = 0; i < nbytes; i++) {
  j = i / sizeof(unsigned long);
  bits[j] |= ((unsigned long) gpio->buffer[i])
      << (8 * (i % sizeof(unsigned long)));
 }

 return 0;
}
