
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct property {int dummy; } ;
struct gpio_fan_speed {void* ctrl_val; void* rpm; } ;
struct gpio_fan_data {unsigned int num_gpios; unsigned int num_speed; struct gpio_fan_speed* speed; struct gpio_desc** gpios; struct gpio_desc* alarm_gpio; struct device* dev; } ;
struct gpio_desc {int dummy; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
typedef int __be32 ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_ASIS ;
 int GPIOD_IN ;
 scalar_t__ IS_ERR (struct gpio_desc*) ;
 int PTR_ERR (struct gpio_desc*) ;
 int dev_err (struct device*,char*) ;
 struct gpio_desc* devm_gpiod_get_index (struct device*,int *,unsigned int,int ) ;
 struct gpio_desc* devm_gpiod_get_optional (struct device*,char*,int ) ;
 void* devm_kcalloc (struct device*,unsigned int,int,int ) ;
 unsigned int gpiod_count (struct device*,int *) ;
 struct property* of_find_property (struct device_node*,char*,unsigned int*) ;
 int * of_prop_next_u32 (struct property*,int const*,void**) ;

__attribute__((used)) static int gpio_fan_get_of_data(struct gpio_fan_data *fan_data)
{
 struct gpio_fan_speed *speed;
 struct device *dev = fan_data->dev;
 struct device_node *np = dev->of_node;
 struct gpio_desc **gpios;
 unsigned i;
 u32 u;
 struct property *prop;
 const __be32 *p;


 fan_data->alarm_gpio = devm_gpiod_get_optional(dev, "alarm", GPIOD_IN);
 if (IS_ERR(fan_data->alarm_gpio))
  return PTR_ERR(fan_data->alarm_gpio);


 fan_data->num_gpios = gpiod_count(dev, ((void*)0));
 if (fan_data->num_gpios <= 0) {
  if (fan_data->alarm_gpio)
   return 0;
  dev_err(dev, "DT properties empty / missing");
  return -ENODEV;
 }
 gpios = devm_kcalloc(dev,
        fan_data->num_gpios, sizeof(struct gpio_desc *),
        GFP_KERNEL);
 if (!gpios)
  return -ENOMEM;
 for (i = 0; i < fan_data->num_gpios; i++) {
  gpios[i] = devm_gpiod_get_index(dev, ((void*)0), i, GPIOD_ASIS);
  if (IS_ERR(gpios[i]))
   return PTR_ERR(gpios[i]);
 }
 fan_data->gpios = gpios;


 prop = of_find_property(np, "gpio-fan,speed-map", &i);
 if (!prop) {
  dev_err(dev, "gpio-fan,speed-map DT property missing");
  return -ENODEV;
 }
 i = i / sizeof(u32);
 if (i == 0 || i & 1) {
  dev_err(dev, "gpio-fan,speed-map contains zero/odd number of entries");
  return -ENODEV;
 }
 fan_data->num_speed = i / 2;






 speed = devm_kcalloc(dev,
   fan_data->num_speed, sizeof(struct gpio_fan_speed),
   GFP_KERNEL);
 if (!speed)
  return -ENOMEM;
 p = ((void*)0);
 for (i = 0; i < fan_data->num_speed; i++) {
  p = of_prop_next_u32(prop, p, &u);
  if (!p)
   return -ENODEV;
  speed[i].rpm = u;
  p = of_prop_next_u32(prop, p, &u);
  if (!p)
   return -ENODEV;
  speed[i].ctrl_val = u;
 }
 fan_data->speed = speed;

 return 0;
}
