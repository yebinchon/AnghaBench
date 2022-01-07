
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rc5t583_platform_data {int gpio_base; } ;
struct TYPE_5__ {char* label; int can_sleep; int base; TYPE_1__* parent; int ngpio; int to_irq; int get; int set; int direction_output; int direction_input; int free; int owner; } ;
struct rc5t583_gpio {TYPE_3__ gpio_chip; struct rc5t583* rc5t583; } ;
struct rc5t583 {int dev; } ;
struct TYPE_4__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int RC5T583_MAX_GPIO ;
 int THIS_MODULE ;
 struct rc5t583* dev_get_drvdata (int ) ;
 struct rc5t583_platform_data* dev_get_platdata (int ) ;
 int devm_gpiochip_add_data (TYPE_1__*,TYPE_3__*,struct rc5t583_gpio*) ;
 struct rc5t583_gpio* devm_kzalloc (TYPE_1__*,int,int ) ;
 int platform_set_drvdata (struct platform_device*,struct rc5t583_gpio*) ;
 int rc5t583_gpio_dir_input ;
 int rc5t583_gpio_dir_output ;
 int rc5t583_gpio_free ;
 int rc5t583_gpio_get ;
 int rc5t583_gpio_set ;
 int rc5t583_gpio_to_irq ;

__attribute__((used)) static int rc5t583_gpio_probe(struct platform_device *pdev)
{
 struct rc5t583 *rc5t583 = dev_get_drvdata(pdev->dev.parent);
 struct rc5t583_platform_data *pdata = dev_get_platdata(rc5t583->dev);
 struct rc5t583_gpio *rc5t583_gpio;

 rc5t583_gpio = devm_kzalloc(&pdev->dev, sizeof(*rc5t583_gpio),
     GFP_KERNEL);
 if (!rc5t583_gpio)
  return -ENOMEM;

 rc5t583_gpio->gpio_chip.label = "gpio-rc5t583",
 rc5t583_gpio->gpio_chip.owner = THIS_MODULE,
 rc5t583_gpio->gpio_chip.free = rc5t583_gpio_free,
 rc5t583_gpio->gpio_chip.direction_input = rc5t583_gpio_dir_input,
 rc5t583_gpio->gpio_chip.direction_output = rc5t583_gpio_dir_output,
 rc5t583_gpio->gpio_chip.set = rc5t583_gpio_set,
 rc5t583_gpio->gpio_chip.get = rc5t583_gpio_get,
 rc5t583_gpio->gpio_chip.to_irq = rc5t583_gpio_to_irq,
 rc5t583_gpio->gpio_chip.ngpio = RC5T583_MAX_GPIO,
 rc5t583_gpio->gpio_chip.can_sleep = 1,
 rc5t583_gpio->gpio_chip.parent = &pdev->dev;
 rc5t583_gpio->gpio_chip.base = -1;
 rc5t583_gpio->rc5t583 = rc5t583;

 if (pdata && pdata->gpio_base)
  rc5t583_gpio->gpio_chip.base = pdata->gpio_base;

 platform_set_drvdata(pdev, rc5t583_gpio);

 return devm_gpiochip_add_data(&pdev->dev, &rc5t583_gpio->gpio_chip,
          rc5t583_gpio);
}
