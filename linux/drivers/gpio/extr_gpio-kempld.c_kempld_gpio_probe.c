
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int parent; } ;
struct platform_device {struct device dev; } ;
struct kempld_platform_data {int gpio_base; } ;
struct gpio_chip {char* label; int can_sleep; int base; scalar_t__ ngpio; int set; int get; int get_direction; int direction_output; int direction_input; struct device* parent; int owner; } ;
struct kempld_gpio_data {struct gpio_chip chip; struct kempld_device_data* pld; } ;
struct TYPE_2__ {int spec_major; } ;
struct kempld_device_data {TYPE_1__ info; int dev; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int THIS_MODULE ;
 int dev_err (struct device*,char*) ;
 struct kempld_device_data* dev_get_drvdata (int ) ;
 struct kempld_platform_data* dev_get_platdata (int ) ;
 int dev_info (struct device*,char*,scalar_t__) ;
 int devm_gpiochip_add_data (struct device*,struct gpio_chip*,struct kempld_gpio_data*) ;
 struct kempld_gpio_data* devm_kzalloc (struct device*,int,int ) ;
 int kempld_gpio_direction_input ;
 int kempld_gpio_direction_output ;
 int kempld_gpio_get ;
 int kempld_gpio_get_direction ;
 scalar_t__ kempld_gpio_pincount (struct kempld_device_data*) ;
 int kempld_gpio_set ;
 int platform_set_drvdata (struct platform_device*,struct kempld_gpio_data*) ;

__attribute__((used)) static int kempld_gpio_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct kempld_device_data *pld = dev_get_drvdata(dev->parent);
 struct kempld_platform_data *pdata = dev_get_platdata(pld->dev);
 struct kempld_gpio_data *gpio;
 struct gpio_chip *chip;
 int ret;

 if (pld->info.spec_major < 2) {
  dev_err(dev,
   "Driver only supports GPIO devices compatible to PLD spec. rev. 2.0 or higher\n");
  return -ENODEV;
 }

 gpio = devm_kzalloc(dev, sizeof(*gpio), GFP_KERNEL);
 if (!gpio)
  return -ENOMEM;

 gpio->pld = pld;

 platform_set_drvdata(pdev, gpio);

 chip = &gpio->chip;
 chip->label = "gpio-kempld";
 chip->owner = THIS_MODULE;
 chip->parent = dev;
 chip->can_sleep = 1;
 if (pdata && pdata->gpio_base)
  chip->base = pdata->gpio_base;
 else
  chip->base = -1;
 chip->direction_input = kempld_gpio_direction_input;
 chip->direction_output = kempld_gpio_direction_output;
 chip->get_direction = kempld_gpio_get_direction;
 chip->get = kempld_gpio_get;
 chip->set = kempld_gpio_set;
 chip->ngpio = kempld_gpio_pincount(pld);
 if (chip->ngpio == 0) {
  dev_err(dev, "No GPIO pins detected\n");
  return -ENODEV;
 }

 ret = devm_gpiochip_add_data(dev, chip, gpio);
 if (ret) {
  dev_err(dev, "Could not register GPIO chip\n");
  return ret;
 }

 dev_info(dev, "GPIO functionality initialized with %d pins\n",
   chip->ngpio);

 return 0;
}
