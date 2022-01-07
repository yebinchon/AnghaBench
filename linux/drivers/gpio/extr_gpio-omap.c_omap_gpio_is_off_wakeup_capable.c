
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gpio_bank {int non_wakeup_gpios; } ;



__attribute__((used)) static bool omap_gpio_is_off_wakeup_capable(struct gpio_bank *bank, u32 gpio_mask)
{
 u32 no_wake = bank->non_wakeup_gpios;

 if (no_wake)
  return !!(~no_wake & gpio_mask);

 return 0;
}
