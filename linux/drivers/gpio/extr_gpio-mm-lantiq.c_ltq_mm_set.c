
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltq_mm {int shadow; } ;
struct gpio_chip {int dummy; } ;


 struct ltq_mm* gpiochip_get_data (struct gpio_chip*) ;
 int ltq_mm_apply (struct ltq_mm*) ;

__attribute__((used)) static void ltq_mm_set(struct gpio_chip *gc, unsigned offset, int value)
{
 struct ltq_mm *chip = gpiochip_get_data(gc);

 if (value)
  chip->shadow |= (1 << offset);
 else
  chip->shadow &= ~(1 << offset);
 ltq_mm_apply(chip);
}
