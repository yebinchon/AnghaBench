
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gpio_chip {int dummy; } ;


 int uniphier_gpio_bank_write (struct gpio_chip*,unsigned int,unsigned int,int ,int ) ;
 int uniphier_gpio_get_bank_and_mask (unsigned int,unsigned int*,int *) ;

__attribute__((used)) static void uniphier_gpio_offset_write(struct gpio_chip *chip,
           unsigned int offset, unsigned int reg,
           int val)
{
 unsigned int bank;
 u32 mask;

 uniphier_gpio_get_bank_and_mask(offset, &bank, &mask);

 uniphier_gpio_bank_write(chip, bank, reg, mask, val ? mask : 0);
}
