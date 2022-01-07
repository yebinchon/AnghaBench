
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct of_phandle_args {int* args; } ;
struct mtk_gc {int bank; } ;
struct gpio_chip {int dummy; } ;


 int EINVAL ;
 int MTK_BANK_WIDTH ;
 struct mtk_gc* to_mediatek_gpio (struct gpio_chip*) ;

__attribute__((used)) static int
mediatek_gpio_xlate(struct gpio_chip *chip,
      const struct of_phandle_args *spec, u32 *flags)
{
 int gpio = spec->args[0];
 struct mtk_gc *rg = to_mediatek_gpio(chip);

 if (rg->bank != gpio / MTK_BANK_WIDTH)
  return -EINVAL;

 if (flags)
  *flags = spec->args[1];

 return gpio % MTK_BANK_WIDTH;
}
