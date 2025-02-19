
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct da9052_pdata {scalar_t__ gpio_base; } ;
struct TYPE_7__ {scalar_t__ base; } ;
struct da9052_gpio {TYPE_1__ gp; TYPE_5__* da9052; } ;
struct TYPE_9__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (TYPE_2__*,char*,int) ;
 TYPE_5__* dev_get_drvdata (int ) ;
 struct da9052_pdata* dev_get_platdata (int ) ;
 int devm_gpiochip_add_data (TYPE_2__*,TYPE_1__*,struct da9052_gpio*) ;
 struct da9052_gpio* devm_kzalloc (TYPE_2__*,int,int ) ;
 int platform_set_drvdata (struct platform_device*,struct da9052_gpio*) ;
 TYPE_1__ reference_gp ;

__attribute__((used)) static int da9052_gpio_probe(struct platform_device *pdev)
{
 struct da9052_gpio *gpio;
 struct da9052_pdata *pdata;
 int ret;

 gpio = devm_kzalloc(&pdev->dev, sizeof(*gpio), GFP_KERNEL);
 if (!gpio)
  return -ENOMEM;

 gpio->da9052 = dev_get_drvdata(pdev->dev.parent);
 pdata = dev_get_platdata(gpio->da9052->dev);

 gpio->gp = reference_gp;
 if (pdata && pdata->gpio_base)
  gpio->gp.base = pdata->gpio_base;

 ret = devm_gpiochip_add_data(&pdev->dev, &gpio->gp, gpio);
 if (ret < 0) {
  dev_err(&pdev->dev, "Could not register gpiochip, %d\n", ret);
  return ret;
 }

 platform_set_drvdata(pdev, gpio);

 return 0;
}
