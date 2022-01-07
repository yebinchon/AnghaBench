
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int of_node; int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct palmas_platform_data {int gpio_base; } ;
struct TYPE_8__ {int can_sleep; int base; int of_node; TYPE_1__* parent; int get; int set; int to_irq; int direction_output; int direction_input; int ngpio; int label; int owner; } ;
struct palmas_gpio {TYPE_4__ gpio_chip; struct palmas* palmas; } ;
struct palmas_device_data {int ngpio; } ;
struct palmas {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int THIS_MODULE ;
 int dev_err (TYPE_1__*,char*,int) ;
 struct palmas* dev_get_drvdata (int ) ;
 struct palmas_platform_data* dev_get_platdata (int ) ;
 int dev_name (TYPE_1__*) ;
 int devm_gpiochip_add_data (TYPE_1__*,TYPE_4__*,struct palmas_gpio*) ;
 struct palmas_gpio* devm_kzalloc (TYPE_1__*,int,int ) ;
 struct palmas_device_data* of_device_get_match_data (TYPE_1__*) ;
 struct palmas_device_data palmas_dev_data ;
 int palmas_gpio_get ;
 int palmas_gpio_input ;
 int palmas_gpio_output ;
 int palmas_gpio_set ;
 int palmas_gpio_to_irq ;
 int platform_set_drvdata (struct platform_device*,struct palmas_gpio*) ;

__attribute__((used)) static int palmas_gpio_probe(struct platform_device *pdev)
{
 struct palmas *palmas = dev_get_drvdata(pdev->dev.parent);
 struct palmas_platform_data *palmas_pdata;
 struct palmas_gpio *palmas_gpio;
 int ret;
 const struct palmas_device_data *dev_data;

 dev_data = of_device_get_match_data(&pdev->dev);
 if (!dev_data)
  dev_data = &palmas_dev_data;

 palmas_gpio = devm_kzalloc(&pdev->dev,
    sizeof(*palmas_gpio), GFP_KERNEL);
 if (!palmas_gpio)
  return -ENOMEM;

 palmas_gpio->palmas = palmas;
 palmas_gpio->gpio_chip.owner = THIS_MODULE;
 palmas_gpio->gpio_chip.label = dev_name(&pdev->dev);
 palmas_gpio->gpio_chip.ngpio = dev_data->ngpio;
 palmas_gpio->gpio_chip.can_sleep = 1;
 palmas_gpio->gpio_chip.direction_input = palmas_gpio_input;
 palmas_gpio->gpio_chip.direction_output = palmas_gpio_output;
 palmas_gpio->gpio_chip.to_irq = palmas_gpio_to_irq;
 palmas_gpio->gpio_chip.set = palmas_gpio_set;
 palmas_gpio->gpio_chip.get = palmas_gpio_get;
 palmas_gpio->gpio_chip.parent = &pdev->dev;



 palmas_pdata = dev_get_platdata(palmas->dev);
 if (palmas_pdata && palmas_pdata->gpio_base)
  palmas_gpio->gpio_chip.base = palmas_pdata->gpio_base;
 else
  palmas_gpio->gpio_chip.base = -1;

 ret = devm_gpiochip_add_data(&pdev->dev, &palmas_gpio->gpio_chip,
         palmas_gpio);
 if (ret < 0) {
  dev_err(&pdev->dev, "Could not register gpiochip, %d\n", ret);
  return ret;
 }

 platform_set_drvdata(pdev, palmas_gpio);
 return ret;
}
