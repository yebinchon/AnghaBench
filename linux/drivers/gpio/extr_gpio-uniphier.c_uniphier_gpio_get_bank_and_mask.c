
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BIT (unsigned int) ;
 unsigned int UNIPHIER_GPIO_LINES_PER_BANK ;

__attribute__((used)) static void uniphier_gpio_get_bank_and_mask(unsigned int offset,
         unsigned int *bank, u32 *mask)
{
 *bank = offset / UNIPHIER_GPIO_LINES_PER_BANK;
 *mask = BIT(offset % UNIPHIER_GPIO_LINES_PER_BANK);
}
