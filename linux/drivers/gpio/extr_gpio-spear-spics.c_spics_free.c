
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spear_spics {int sw_enable_bit; scalar_t__ perip_cfg; scalar_t__ base; int use_count; } ;
struct gpio_chip {int dummy; } ;


 struct spear_spics* gpiochip_get_data (struct gpio_chip*) ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void spics_free(struct gpio_chip *chip, unsigned offset)
{
 struct spear_spics *spics = gpiochip_get_data(chip);
 u32 tmp;

 if (!--spics->use_count) {
  tmp = readl_relaxed(spics->base + spics->perip_cfg);
  tmp &= ~(0x1 << spics->sw_enable_bit);
  writel_relaxed(tmp, spics->base + spics->perip_cfg);
 }
}
