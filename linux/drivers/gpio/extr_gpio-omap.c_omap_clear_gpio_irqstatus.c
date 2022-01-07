
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_bank {int dummy; } ;


 int BIT (unsigned int) ;
 int omap_clear_gpio_irqbank (struct gpio_bank*,int ) ;

__attribute__((used)) static inline void omap_clear_gpio_irqstatus(struct gpio_bank *bank,
          unsigned offset)
{
 omap_clear_gpio_irqbank(bank, BIT(offset));
}
