
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int base; int can_sleep; int owner; int set_config; int set; int get; int direction_output; int direction_input; int get_direction; struct device* parent; scalar_t__ ngpio; int label; } ;
struct ltc4306 {TYPE_2__ gpiochip; int regmap; TYPE_1__* chip; } ;
struct device {int dummy; } ;
struct TYPE_3__ {scalar_t__ num_gpios; } ;


 int LTC_GPIO_ALL_INPUT ;
 int LTC_REG_MODE ;
 int THIS_MODULE ;
 int dev_name (struct device*) ;
 int devm_gpiochip_add_data (struct device*,TYPE_2__*,struct ltc4306*) ;
 int ltc4306_gpio_direction_input ;
 int ltc4306_gpio_direction_output ;
 int ltc4306_gpio_get ;
 int ltc4306_gpio_get_direction ;
 int ltc4306_gpio_set ;
 int ltc4306_gpio_set_config ;
 struct device* regmap_get_device (int ) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int ltc4306_gpio_init(struct ltc4306 *data)
{
 struct device *dev = regmap_get_device(data->regmap);

 if (!data->chip->num_gpios)
  return 0;

 data->gpiochip.label = dev_name(dev);
 data->gpiochip.base = -1;
 data->gpiochip.ngpio = data->chip->num_gpios;
 data->gpiochip.parent = dev;
 data->gpiochip.can_sleep = 1;
 data->gpiochip.get_direction = ltc4306_gpio_get_direction;
 data->gpiochip.direction_input = ltc4306_gpio_direction_input;
 data->gpiochip.direction_output = ltc4306_gpio_direction_output;
 data->gpiochip.get = ltc4306_gpio_get;
 data->gpiochip.set = ltc4306_gpio_set;
 data->gpiochip.set_config = ltc4306_gpio_set_config;
 data->gpiochip.owner = THIS_MODULE;


 regmap_write(data->regmap, LTC_REG_MODE, LTC_GPIO_ALL_INPUT);

 return devm_gpiochip_add_data(dev, &data->gpiochip, data);
}
