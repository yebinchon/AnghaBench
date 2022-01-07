
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct gpio_chip {int dummy; } ;
struct ep93xx_gpio_bank {int label; } ;
struct ep93xx_gpio {struct gpio_chip* gc; int base; } ;


 int ARRAY_SIZE (struct ep93xx_gpio_bank*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_warn (int *,char*,int ) ;
 struct ep93xx_gpio* devm_kzalloc (int *,int,int ) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 scalar_t__ ep93xx_gpio_add_bank (struct gpio_chip*,struct platform_device*,struct ep93xx_gpio*,struct ep93xx_gpio_bank*) ;
 struct ep93xx_gpio_bank* ep93xx_gpio_banks ;

__attribute__((used)) static int ep93xx_gpio_probe(struct platform_device *pdev)
{
 struct ep93xx_gpio *epg;
 int i;

 epg = devm_kzalloc(&pdev->dev, sizeof(*epg), GFP_KERNEL);
 if (!epg)
  return -ENOMEM;

 epg->base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(epg->base))
  return PTR_ERR(epg->base);

 for (i = 0; i < ARRAY_SIZE(ep93xx_gpio_banks); i++) {
  struct gpio_chip *gc = &epg->gc[i];
  struct ep93xx_gpio_bank *bank = &ep93xx_gpio_banks[i];

  if (ep93xx_gpio_add_bank(gc, pdev, epg, bank))
   dev_warn(&pdev->dev, "Unable to add gpio bank %s\n",
     bank->label);
 }

 return 0;
}
