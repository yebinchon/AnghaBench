
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cs5535_gpio_chip {scalar_t__ base; } ;


 int errata_outl (struct cs5535_gpio_chip*,int,unsigned int) ;
 int outl (int,scalar_t__) ;

__attribute__((used)) static void __cs5535_gpio_set(struct cs5535_gpio_chip *chip, unsigned offset,
  unsigned int reg)
{
 if (offset < 16)

  outl(1 << offset, chip->base + reg);
 else

  errata_outl(chip, 1 << (offset - 16), reg);
}
