
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {struct device* parent; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {int base; int ngpio; int can_sleep; int to_irq; int set_config; int get_direction; int get; int set; int direction_output; int direction_input; int owner; struct device* parent; int label; } ;
struct max77650_gpio_chip {scalar_t__ irq; TYPE_1__ gc; int map; } ;
struct i2c_client {int name; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int THIS_MODULE ;
 int dev_get_regmap (struct device*,int *) ;
 int devm_gpiochip_add_data (struct device*,TYPE_1__*,struct max77650_gpio_chip*) ;
 struct max77650_gpio_chip* devm_kzalloc (struct device*,int,int ) ;
 int max77650_gpio_direction_input ;
 int max77650_gpio_direction_output ;
 int max77650_gpio_get_direction ;
 int max77650_gpio_get_value ;
 int max77650_gpio_set_config ;
 int max77650_gpio_set_value ;
 int max77650_gpio_to_irq ;
 scalar_t__ platform_get_irq_byname (struct platform_device*,char*) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static int max77650_gpio_probe(struct platform_device *pdev)
{
 struct max77650_gpio_chip *chip;
 struct device *dev, *parent;
 struct i2c_client *i2c;

 dev = &pdev->dev;
 parent = dev->parent;
 i2c = to_i2c_client(parent);

 chip = devm_kzalloc(dev, sizeof(*chip), GFP_KERNEL);
 if (!chip)
  return -ENOMEM;

 chip->map = dev_get_regmap(parent, ((void*)0));
 if (!chip->map)
  return -ENODEV;

 chip->irq = platform_get_irq_byname(pdev, "GPI");
 if (chip->irq < 0)
  return chip->irq;

 chip->gc.base = -1;
 chip->gc.ngpio = 1;
 chip->gc.label = i2c->name;
 chip->gc.parent = dev;
 chip->gc.owner = THIS_MODULE;
 chip->gc.can_sleep = 1;

 chip->gc.direction_input = max77650_gpio_direction_input;
 chip->gc.direction_output = max77650_gpio_direction_output;
 chip->gc.set = max77650_gpio_set_value;
 chip->gc.get = max77650_gpio_get_value;
 chip->gc.get_direction = max77650_gpio_get_direction;
 chip->gc.set_config = max77650_gpio_set_config;
 chip->gc.to_irq = max77650_gpio_to_irq;

 return devm_gpiochip_add_data(dev, &chip->gc, chip);
}
