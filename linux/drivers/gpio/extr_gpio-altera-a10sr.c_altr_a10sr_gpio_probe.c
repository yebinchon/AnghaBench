
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int of_node; int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct TYPE_7__ {int of_node; int parent; } ;
struct altr_a10sr_gpio {TYPE_3__ gp; int regmap; } ;
struct altr_a10sr {int regmap; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_3__ altr_a10sr_gc ;
 int dev_err (TYPE_1__*,char*,int) ;
 struct altr_a10sr* dev_get_drvdata (int ) ;
 int devm_gpiochip_add_data (TYPE_1__*,TYPE_3__*,struct altr_a10sr_gpio*) ;
 struct altr_a10sr_gpio* devm_kzalloc (TYPE_1__*,int,int ) ;
 int platform_set_drvdata (struct platform_device*,struct altr_a10sr_gpio*) ;

__attribute__((used)) static int altr_a10sr_gpio_probe(struct platform_device *pdev)
{
 struct altr_a10sr_gpio *gpio;
 int ret;
 struct altr_a10sr *a10sr = dev_get_drvdata(pdev->dev.parent);

 gpio = devm_kzalloc(&pdev->dev, sizeof(*gpio), GFP_KERNEL);
 if (!gpio)
  return -ENOMEM;

 gpio->regmap = a10sr->regmap;

 gpio->gp = altr_a10sr_gc;
 gpio->gp.parent = pdev->dev.parent;
 gpio->gp.of_node = pdev->dev.of_node;

 ret = devm_gpiochip_add_data(&pdev->dev, &gpio->gp, gpio);
 if (ret < 0) {
  dev_err(&pdev->dev, "Could not register gpiochip, %d\n", ret);
  return ret;
 }

 platform_set_drvdata(pdev, gpio);

 return 0;
}
