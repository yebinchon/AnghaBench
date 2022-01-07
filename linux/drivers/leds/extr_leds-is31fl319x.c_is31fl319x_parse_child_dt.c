
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int default_trigger; int name; } ;
struct is31fl319x_led {scalar_t__ max_microamp; struct led_classdev cdev; } ;
struct device_node {int name; } ;
struct device {int dummy; } ;


 int EINVAL ;
 scalar_t__ IS31FL319X_CURRENT_DEFAULT ;
 int IS31FL319X_CURRENT_MAX ;
 scalar_t__ IS31FL319X_CURRENT_MIN ;
 scalar_t__ min (scalar_t__,int ) ;
 int of_property_read_string (struct device_node const*,char*,int *) ;
 int of_property_read_u32 (struct device_node const*,char*,scalar_t__*) ;

__attribute__((used)) static int is31fl319x_parse_child_dt(const struct device *dev,
         const struct device_node *child,
         struct is31fl319x_led *led)
{
 struct led_classdev *cdev = &led->cdev;
 int ret;

 if (of_property_read_string(child, "label", &cdev->name))
  cdev->name = child->name;

 ret = of_property_read_string(child, "linux,default-trigger",
          &cdev->default_trigger);
 if (ret < 0 && ret != -EINVAL)
  return ret;

 led->max_microamp = IS31FL319X_CURRENT_DEFAULT;
 ret = of_property_read_u32(child, "led-max-microamp",
       &led->max_microamp);
 if (!ret) {
  if (led->max_microamp < IS31FL319X_CURRENT_MIN)
   return -EINVAL;
  led->max_microamp = min(led->max_microamp,
       IS31FL319X_CURRENT_MAX);
 }

 return 0;
}
