
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {scalar_t__ of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_4__ {char const* default_trigger; TYPE_1__* dev; int brightness; int brightness_set_blocking; } ;
struct lt3593_led_data {TYPE_2__ cdev; int gpiod; } ;
struct led_init_data {char* default_label; int devicename; struct fwnode_handle* fwnode; } ;
struct fwnode_handle {int dummy; } ;
struct TYPE_3__ {scalar_t__ of_node; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int LEDS_GPIO_DEFSTATE_OFF ;
 int LEDS_GPIO_DEFSTATE_ON ;
 int LED_FULL ;
 int LED_LT3593_NAME ;
 int LED_OFF ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*) ;
 int device_get_child_node_count (struct device*) ;
 struct fwnode_handle* device_get_next_child_node (struct device*,int *) ;
 int devm_gpiod_get (struct device*,char*,int ) ;
 struct lt3593_led_data* devm_kzalloc (struct device*,int,int ) ;
 int devm_led_classdev_register_ext (struct device*,TYPE_2__*,struct led_init_data*) ;
 int fwnode_handle_put (struct fwnode_handle*) ;
 int fwnode_property_read_string (struct fwnode_handle*,char*,char const**) ;
 int lt3593_led_set ;
 int platform_set_drvdata (struct platform_device*,struct lt3593_led_data*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int lt3593_led_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct lt3593_led_data *led_data;
 struct fwnode_handle *child;
 int ret, state = LEDS_GPIO_DEFSTATE_OFF;
 struct led_init_data init_data = {};
 const char *tmp;

 if (!dev->of_node)
  return -ENODEV;

 led_data = devm_kzalloc(dev, sizeof(*led_data), GFP_KERNEL);
 if (!led_data)
  return -ENOMEM;

 if (device_get_child_node_count(dev) != 1) {
  dev_err(dev, "Device must have exactly one LED sub-node.");
  return -EINVAL;
 }

 led_data->gpiod = devm_gpiod_get(dev, "lltc,ctrl", 0);
 if (IS_ERR(led_data->gpiod))
  return PTR_ERR(led_data->gpiod);

 child = device_get_next_child_node(dev, ((void*)0));

 fwnode_property_read_string(child, "linux,default-trigger",
        &led_data->cdev.default_trigger);

 if (!fwnode_property_read_string(child, "default-state", &tmp)) {
  if (!strcmp(tmp, "on"))
   state = LEDS_GPIO_DEFSTATE_ON;
 }

 led_data->cdev.brightness_set_blocking = lt3593_led_set;
 led_data->cdev.brightness = state ? LED_FULL : LED_OFF;

 init_data.fwnode = child;
 init_data.devicename = LED_LT3593_NAME;
 init_data.default_label = ":";

 ret = devm_led_classdev_register_ext(dev, &led_data->cdev, &init_data);
 if (ret < 0) {
  fwnode_handle_put(child);
  return ret;
 }

 led_data->cdev.dev->of_node = dev->of_node;
 platform_set_drvdata(pdev, led_data);

 return 0;
}
