
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int parent; } ;
struct platform_device {TYPE_3__ dev; } ;
struct arizona_pdata {int gpio_base; } ;
struct TYPE_9__ {int ngpio; int base; int of_node; TYPE_3__* parent; } ;
struct arizona_gpio {TYPE_2__ gpio_chip; struct arizona* arizona; } ;
struct arizona {int type; TYPE_1__* dev; struct arizona_pdata pdata; } ;
struct TYPE_8__ {int of_node; } ;



 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;







 int dev_err (TYPE_3__*,char*,int) ;
 struct arizona* dev_get_drvdata (int ) ;
 int devm_gpiochip_add_data (TYPE_3__*,TYPE_2__*,struct arizona_gpio*) ;
 struct arizona_gpio* devm_kzalloc (TYPE_3__*,int,int ) ;
 int pm_runtime_enable (TYPE_3__*) ;
 TYPE_2__ template_chip ;

__attribute__((used)) static int arizona_gpio_probe(struct platform_device *pdev)
{
 struct arizona *arizona = dev_get_drvdata(pdev->dev.parent);
 struct arizona_pdata *pdata = &arizona->pdata;
 struct arizona_gpio *arizona_gpio;
 int ret;

 arizona_gpio = devm_kzalloc(&pdev->dev, sizeof(*arizona_gpio),
        GFP_KERNEL);
 if (!arizona_gpio)
  return -ENOMEM;

 arizona_gpio->arizona = arizona;
 arizona_gpio->gpio_chip = template_chip;
 arizona_gpio->gpio_chip.parent = &pdev->dev;




 switch (arizona->type) {
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
 case 134:
  arizona_gpio->gpio_chip.ngpio = 5;
  break;
 case 133:
 case 135:
  arizona_gpio->gpio_chip.ngpio = 2;
  break;
 default:
  dev_err(&pdev->dev, "Unknown chip variant %d\n",
   arizona->type);
  return -EINVAL;
 }

 if (pdata->gpio_base)
  arizona_gpio->gpio_chip.base = pdata->gpio_base;
 else
  arizona_gpio->gpio_chip.base = -1;

 pm_runtime_enable(&pdev->dev);

 ret = devm_gpiochip_add_data(&pdev->dev, &arizona_gpio->gpio_chip,
         arizona_gpio);
 if (ret < 0) {
  dev_err(&pdev->dev, "Could not register gpiochip, %d\n",
   ret);
  return ret;
 }

 return 0;
}
