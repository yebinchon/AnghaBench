
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int of_node; TYPE_2__* parent; } ;
struct tps65218_gpio {TYPE_1__ gpio_chip; struct tps65218* tps65218; } ;
struct tps65218 {int dummy; } ;
struct TYPE_7__ {int of_node; int parent; } ;
struct platform_device {TYPE_2__ dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (TYPE_2__*,char*,int) ;
 struct tps65218* dev_get_drvdata (int ) ;
 int devm_gpiochip_add_data (TYPE_2__*,TYPE_1__*,struct tps65218_gpio*) ;
 struct tps65218_gpio* devm_kzalloc (TYPE_2__*,int,int ) ;
 int platform_set_drvdata (struct platform_device*,struct tps65218_gpio*) ;
 TYPE_1__ template_chip ;

__attribute__((used)) static int tps65218_gpio_probe(struct platform_device *pdev)
{
 struct tps65218 *tps65218 = dev_get_drvdata(pdev->dev.parent);
 struct tps65218_gpio *tps65218_gpio;
 int ret;

 tps65218_gpio = devm_kzalloc(&pdev->dev, sizeof(*tps65218_gpio),
         GFP_KERNEL);
 if (!tps65218_gpio)
  return -ENOMEM;

 tps65218_gpio->tps65218 = tps65218;
 tps65218_gpio->gpio_chip = template_chip;
 tps65218_gpio->gpio_chip.parent = &pdev->dev;




 ret = devm_gpiochip_add_data(&pdev->dev, &tps65218_gpio->gpio_chip,
         tps65218_gpio);
 if (ret < 0) {
  dev_err(&pdev->dev, "Failed to register gpiochip, %d\n", ret);
  return ret;
 }

 platform_set_drvdata(pdev, tps65218_gpio);

 return ret;
}
