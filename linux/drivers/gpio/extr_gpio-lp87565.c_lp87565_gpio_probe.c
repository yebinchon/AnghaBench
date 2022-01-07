
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_6__ {int parent; } ;
struct lp87565_gpio {TYPE_1__ chip; int map; } ;
struct lp87565 {int regmap; int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (TYPE_2__*,char*,int) ;
 struct lp87565* dev_get_drvdata (int ) ;
 int devm_gpiochip_add_data (TYPE_2__*,TYPE_1__*,struct lp87565_gpio*) ;
 struct lp87565_gpio* devm_kzalloc (TYPE_2__*,int,int ) ;
 TYPE_1__ template_chip ;

__attribute__((used)) static int lp87565_gpio_probe(struct platform_device *pdev)
{
 struct lp87565_gpio *gpio;
 struct lp87565 *lp87565;
 int ret;

 gpio = devm_kzalloc(&pdev->dev, sizeof(*gpio), GFP_KERNEL);
 if (!gpio)
  return -ENOMEM;

 lp87565 = dev_get_drvdata(pdev->dev.parent);
 gpio->chip = template_chip;
 gpio->chip.parent = lp87565->dev;
 gpio->map = lp87565->regmap;

 ret = devm_gpiochip_add_data(&pdev->dev, &gpio->chip, gpio);
 if (ret < 0) {
  dev_err(&pdev->dev, "Could not register gpiochip, %d\n", ret);
  return ret;
 }

 return 0;
}
