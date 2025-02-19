
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_7__ {int parent; } ;
struct lp873x_gpio {TYPE_1__ chip; TYPE_5__* lp873; } ;
struct TYPE_9__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (TYPE_2__*,char*,int) ;
 TYPE_5__* dev_get_drvdata (int ) ;
 int devm_gpiochip_add_data (TYPE_2__*,TYPE_1__*,struct lp873x_gpio*) ;
 struct lp873x_gpio* devm_kzalloc (TYPE_2__*,int,int ) ;
 int platform_set_drvdata (struct platform_device*,struct lp873x_gpio*) ;
 TYPE_1__ template_chip ;

__attribute__((used)) static int lp873x_gpio_probe(struct platform_device *pdev)
{
 struct lp873x_gpio *gpio;
 int ret;

 gpio = devm_kzalloc(&pdev->dev, sizeof(*gpio), GFP_KERNEL);
 if (!gpio)
  return -ENOMEM;

 platform_set_drvdata(pdev, gpio);

 gpio->lp873 = dev_get_drvdata(pdev->dev.parent);
 gpio->chip = template_chip;
 gpio->chip.parent = gpio->lp873->dev;

 ret = devm_gpiochip_add_data(&pdev->dev, &gpio->chip, gpio);
 if (ret < 0) {
  dev_err(&pdev->dev, "Could not register gpiochip, %d\n", ret);
  return ret;
 }

 return 0;
}
