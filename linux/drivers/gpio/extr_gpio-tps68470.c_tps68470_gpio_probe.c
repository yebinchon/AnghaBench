
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {char* label; int can_sleep; int base; TYPE_1__* parent; int ngpio; int names; int set; int get_direction; int get; int direction_output; int direction_input; int owner; } ;
struct tps68470_gpio_data {TYPE_3__ gc; int tps68470_regmap; } ;
struct TYPE_5__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int THIS_MODULE ;
 int TPS68470_N_GPIO ;
 int dev_err (TYPE_1__*,char*,int) ;
 int dev_get_drvdata (int ) ;
 int devm_gpiochip_add_data (TYPE_1__*,TYPE_3__*,struct tps68470_gpio_data*) ;
 struct tps68470_gpio_data* devm_kzalloc (TYPE_1__*,int,int ) ;
 int platform_set_drvdata (struct platform_device*,struct tps68470_gpio_data*) ;
 int tps68470_gpio_get ;
 int tps68470_gpio_get_direction ;
 int tps68470_gpio_input ;
 int tps68470_gpio_output ;
 int tps68470_gpio_set ;
 int tps68470_names ;

__attribute__((used)) static int tps68470_gpio_probe(struct platform_device *pdev)
{
 struct tps68470_gpio_data *tps68470_gpio;
 int ret;

 tps68470_gpio = devm_kzalloc(&pdev->dev, sizeof(*tps68470_gpio),
         GFP_KERNEL);
 if (!tps68470_gpio)
  return -ENOMEM;

 tps68470_gpio->tps68470_regmap = dev_get_drvdata(pdev->dev.parent);
 tps68470_gpio->gc.label = "tps68470-gpio";
 tps68470_gpio->gc.owner = THIS_MODULE;
 tps68470_gpio->gc.direction_input = tps68470_gpio_input;
 tps68470_gpio->gc.direction_output = tps68470_gpio_output;
 tps68470_gpio->gc.get = tps68470_gpio_get;
 tps68470_gpio->gc.get_direction = tps68470_gpio_get_direction;
 tps68470_gpio->gc.set = tps68470_gpio_set;
 tps68470_gpio->gc.can_sleep = 1;
 tps68470_gpio->gc.names = tps68470_names;
 tps68470_gpio->gc.ngpio = TPS68470_N_GPIO;
 tps68470_gpio->gc.base = -1;
 tps68470_gpio->gc.parent = &pdev->dev;

 ret = devm_gpiochip_add_data(&pdev->dev, &tps68470_gpio->gc,
         tps68470_gpio);
 if (ret < 0) {
  dev_err(&pdev->dev, "Failed to register gpio_chip: %d\n", ret);
  return ret;
 }

 platform_set_drvdata(pdev, tps68470_gpio);

 return ret;
}
