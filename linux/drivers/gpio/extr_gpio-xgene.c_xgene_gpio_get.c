
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgene_gpio {scalar_t__ base; } ;
struct gpio_chip {int dummy; } ;


 int BIT (int ) ;
 unsigned long GPIO_BANK_OFFSET (unsigned int) ;
 int GPIO_BIT_OFFSET (unsigned int) ;
 unsigned long GPIO_DATA_OFFSET ;
 struct xgene_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int ioread32 (scalar_t__) ;

__attribute__((used)) static int xgene_gpio_get(struct gpio_chip *gc, unsigned int offset)
{
 struct xgene_gpio *chip = gpiochip_get_data(gc);
 unsigned long bank_offset;
 u32 bit_offset;

 bank_offset = GPIO_DATA_OFFSET + GPIO_BANK_OFFSET(offset);
 bit_offset = GPIO_BIT_OFFSET(offset);
 return !!(ioread32(chip->base + bank_offset) & BIT(bit_offset));
}
