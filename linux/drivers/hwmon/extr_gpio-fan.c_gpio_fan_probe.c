
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct gpio_fan_data {scalar_t__ num_gpios; int num_speed; int cdev; scalar_t__ alarm_gpio; int hwmon_dev; int speed; scalar_t__ gpios; int lock; struct device* dev; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_info (struct device*,char*) ;
 int devm_add_action_or_reset (struct device*,int ,struct gpio_fan_data*) ;
 int devm_hwmon_device_register_with_groups (struct device*,char*,struct gpio_fan_data*,int ) ;
 struct gpio_fan_data* devm_kzalloc (struct device*,int,int ) ;
 int devm_thermal_of_cooling_device_register (struct device*,struct device_node*,char*,struct gpio_fan_data*,int *) ;
 int fan_alarm_init (struct gpio_fan_data*) ;
 int fan_ctrl_init (struct gpio_fan_data*) ;
 int gpio_fan_cool_ops ;
 int gpio_fan_get_of_data (struct gpio_fan_data*) ;
 int gpio_fan_groups ;
 int gpio_fan_stop ;
 int mutex_init (int *) ;
 int platform_set_drvdata (struct platform_device*,struct gpio_fan_data*) ;

__attribute__((used)) static int gpio_fan_probe(struct platform_device *pdev)
{
 int err;
 struct gpio_fan_data *fan_data;
 struct device *dev = &pdev->dev;
 struct device_node *np = dev->of_node;

 fan_data = devm_kzalloc(dev, sizeof(struct gpio_fan_data),
    GFP_KERNEL);
 if (!fan_data)
  return -ENOMEM;

 fan_data->dev = dev;
 err = gpio_fan_get_of_data(fan_data);
 if (err)
  return err;

 platform_set_drvdata(pdev, fan_data);
 mutex_init(&fan_data->lock);


 if (fan_data->gpios && fan_data->num_gpios > 0) {
  if (!fan_data->speed || fan_data->num_speed <= 1)
   return -EINVAL;
  err = fan_ctrl_init(fan_data);
  if (err)
   return err;
  err = devm_add_action_or_reset(dev, gpio_fan_stop, fan_data);
  if (err)
   return err;
 }


 fan_data->hwmon_dev =
  devm_hwmon_device_register_with_groups(dev,
             "gpio_fan", fan_data,
             gpio_fan_groups);
 if (IS_ERR(fan_data->hwmon_dev))
  return PTR_ERR(fan_data->hwmon_dev);


 if (fan_data->alarm_gpio) {
  err = fan_alarm_init(fan_data);
  if (err)
   return err;
 }


 fan_data->cdev = devm_thermal_of_cooling_device_register(dev, np,
    "gpio-fan", fan_data, &gpio_fan_cool_ops);

 dev_info(dev, "GPIO fan initialized\n");

 return 0;
}
