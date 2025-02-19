
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct tps6586x_platform_data {int gpio_base; } ;
struct TYPE_7__ {int ngpio; int can_sleep; int base; int of_node; int to_irq; int get; int set; int direction_output; TYPE_1__* parent; int label; int owner; } ;
struct tps6586x_gpio {TYPE_3__ gpio_chip; TYPE_4__* parent; } ;
struct TYPE_6__ {TYPE_4__* parent; } ;
struct platform_device {TYPE_1__ dev; int name; } ;
struct TYPE_8__ {int of_node; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int THIS_MODULE ;
 int dev_err (TYPE_1__*,char*,int) ;
 struct tps6586x_platform_data* dev_get_platdata (TYPE_4__*) ;
 int devm_gpiochip_add_data (TYPE_1__*,TYPE_3__*,struct tps6586x_gpio*) ;
 struct tps6586x_gpio* devm_kzalloc (TYPE_1__*,int,int ) ;
 int platform_set_drvdata (struct platform_device*,struct tps6586x_gpio*) ;
 int tps6586x_gpio_get ;
 int tps6586x_gpio_output ;
 int tps6586x_gpio_set ;
 int tps6586x_gpio_to_irq ;

__attribute__((used)) static int tps6586x_gpio_probe(struct platform_device *pdev)
{
 struct tps6586x_platform_data *pdata;
 struct tps6586x_gpio *tps6586x_gpio;
 int ret;

 pdata = dev_get_platdata(pdev->dev.parent);
 tps6586x_gpio = devm_kzalloc(&pdev->dev,
    sizeof(*tps6586x_gpio), GFP_KERNEL);
 if (!tps6586x_gpio)
  return -ENOMEM;

 tps6586x_gpio->parent = pdev->dev.parent;

 tps6586x_gpio->gpio_chip.owner = THIS_MODULE;
 tps6586x_gpio->gpio_chip.label = pdev->name;
 tps6586x_gpio->gpio_chip.parent = &pdev->dev;
 tps6586x_gpio->gpio_chip.ngpio = 4;
 tps6586x_gpio->gpio_chip.can_sleep = 1;


 tps6586x_gpio->gpio_chip.direction_output = tps6586x_gpio_output;
 tps6586x_gpio->gpio_chip.set = tps6586x_gpio_set;
 tps6586x_gpio->gpio_chip.get = tps6586x_gpio_get;
 tps6586x_gpio->gpio_chip.to_irq = tps6586x_gpio_to_irq;




 if (pdata && pdata->gpio_base)
  tps6586x_gpio->gpio_chip.base = pdata->gpio_base;
 else
  tps6586x_gpio->gpio_chip.base = -1;

 ret = devm_gpiochip_add_data(&pdev->dev, &tps6586x_gpio->gpio_chip,
         tps6586x_gpio);
 if (ret < 0) {
  dev_err(&pdev->dev, "Could not register gpiochip, %d\n", ret);
  return ret;
 }

 platform_set_drvdata(pdev, tps6586x_gpio);

 return ret;
}
