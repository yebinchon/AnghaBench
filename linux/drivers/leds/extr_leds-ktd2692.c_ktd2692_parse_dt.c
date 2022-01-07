
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ktd2692_led_config_data {int flash_max_timeout; int flash_max_microamp; int movie_max_microamp; } ;
struct TYPE_3__ {int name; } ;
struct TYPE_4__ {TYPE_1__ led_cdev; } ;
struct ktd2692_context {TYPE_2__ fled_cdev; int * regulator; void* aux_gpio; void* ctrl_gpio; } ;
struct device_node {int name; } ;
struct device {struct device_node* of_node; } ;


 int EINVAL ;
 int ENXIO ;
 int GPIOD_ASIS ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR_OR_ZERO (void*) ;
 int dev_err (struct device*,char*,...) ;
 void* devm_gpiod_get (struct device*,char*,int ) ;
 int * devm_regulator_get (struct device*,char*) ;
 struct device_node* of_get_next_available_child (struct device_node*,int *) ;
 scalar_t__ of_get_property (struct device_node*,char*,int *) ;
 int of_node_put (struct device_node*) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;
 int regulator_enable (int *) ;

__attribute__((used)) static int ktd2692_parse_dt(struct ktd2692_context *led, struct device *dev,
       struct ktd2692_led_config_data *cfg)
{
 struct device_node *np = dev->of_node;
 struct device_node *child_node;
 int ret;

 if (!dev->of_node)
  return -ENXIO;

 led->ctrl_gpio = devm_gpiod_get(dev, "ctrl", GPIOD_ASIS);
 ret = PTR_ERR_OR_ZERO(led->ctrl_gpio);
 if (ret) {
  dev_err(dev, "cannot get ctrl-gpios %d\n", ret);
  return ret;
 }

 led->aux_gpio = devm_gpiod_get(dev, "aux", GPIOD_ASIS);
 ret = PTR_ERR_OR_ZERO(led->aux_gpio);
 if (ret) {
  dev_err(dev, "cannot get aux-gpios %d\n", ret);
  return ret;
 }

 led->regulator = devm_regulator_get(dev, "vin");
 if (IS_ERR(led->regulator))
  led->regulator = ((void*)0);

 if (led->regulator) {
  ret = regulator_enable(led->regulator);
  if (ret)
   dev_err(dev, "Failed to enable supply: %d\n", ret);
 }

 child_node = of_get_next_available_child(np, ((void*)0));
 if (!child_node) {
  dev_err(dev, "No DT child node found for connected LED.\n");
  return -EINVAL;
 }

 led->fled_cdev.led_cdev.name =
  of_get_property(child_node, "label", ((void*)0)) ? : child_node->name;

 ret = of_property_read_u32(child_node, "led-max-microamp",
       &cfg->movie_max_microamp);
 if (ret) {
  dev_err(dev, "failed to parse led-max-microamp\n");
  goto err_parse_dt;
 }

 ret = of_property_read_u32(child_node, "flash-max-microamp",
       &cfg->flash_max_microamp);
 if (ret) {
  dev_err(dev, "failed to parse flash-max-microamp\n");
  goto err_parse_dt;
 }

 ret = of_property_read_u32(child_node, "flash-max-timeout-us",
       &cfg->flash_max_timeout);
 if (ret) {
  dev_err(dev, "failed to parse flash-max-timeout-us\n");
  goto err_parse_dt;
 }

err_parse_dt:
 of_node_put(child_node);
 return ret;
}
