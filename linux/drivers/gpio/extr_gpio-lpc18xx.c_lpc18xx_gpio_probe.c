
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct resource {int dummy; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_3__ {struct device* parent; } ;
struct lpc18xx_gpio_chip {int clk; TYPE_1__ gpio; int lock; int base; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (struct device*,char*) ;
 int devm_clk_get (struct device*,int *) ;
 int devm_gpiochip_add_data (struct device*,TYPE_1__*,struct lpc18xx_gpio_chip*) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 struct lpc18xx_gpio_chip* devm_kzalloc (struct device*,int,int ) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 TYPE_1__ lpc18xx_chip ;
 int lpc18xx_gpio_pin_ic_probe (struct lpc18xx_gpio_chip*) ;
 int of_address_to_resource (int ,int,struct resource*) ;
 int of_property_match_string (int ,char*,char*) ;
 int platform_set_drvdata (struct platform_device*,struct lpc18xx_gpio_chip*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int lpc18xx_gpio_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct lpc18xx_gpio_chip *gc;
 int index, ret;

 gc = devm_kzalloc(dev, sizeof(*gc), GFP_KERNEL);
 if (!gc)
  return -ENOMEM;

 gc->gpio = lpc18xx_chip;
 platform_set_drvdata(pdev, gc);

 index = of_property_match_string(dev->of_node, "reg-names", "gpio");
 if (index < 0) {

  gc->base = devm_platform_ioremap_resource(pdev, 0);
 } else {
  struct resource res;

  ret = of_address_to_resource(dev->of_node, index, &res);
  if (ret < 0)
   return ret;

  gc->base = devm_ioremap_resource(dev, &res);
 }
 if (IS_ERR(gc->base))
  return PTR_ERR(gc->base);

 gc->clk = devm_clk_get(dev, ((void*)0));
 if (IS_ERR(gc->clk)) {
  dev_err(dev, "input clock not found\n");
  return PTR_ERR(gc->clk);
 }

 ret = clk_prepare_enable(gc->clk);
 if (ret) {
  dev_err(dev, "unable to enable clock\n");
  return ret;
 }

 spin_lock_init(&gc->lock);

 gc->gpio.parent = dev;

 ret = devm_gpiochip_add_data(dev, &gc->gpio, gc);
 if (ret) {
  dev_err(dev, "failed to add gpio chip\n");
  clk_disable_unprepare(gc->clk);
  return ret;
 }


 lpc18xx_gpio_pin_ic_probe(gc);

 return 0;
}
