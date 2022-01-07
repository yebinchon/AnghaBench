
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 int INDT ;
 int INOUTSEL ;
 int OUTDT ;
 int gpio_rcar_read (int ,int ) ;
 int gpiochip_get_data (struct gpio_chip*) ;

__attribute__((used)) static int gpio_rcar_get(struct gpio_chip *chip, unsigned offset)
{
 u32 bit = BIT(offset);



 if (gpio_rcar_read(gpiochip_get_data(chip), INOUTSEL) & bit)
  return !!(gpio_rcar_read(gpiochip_get_data(chip), OUTDT) & bit);
 else
  return !!(gpio_rcar_read(gpiochip_get_data(chip), INDT) & bit);
}
