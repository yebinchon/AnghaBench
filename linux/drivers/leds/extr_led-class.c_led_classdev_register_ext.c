
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct led_init_data {scalar_t__ fwnode; int devicename; scalar_t__ devname_mandatory; } ;
struct led_classdev {char* name; int flags; int brightness_hw_changed; int led_access; scalar_t__ max_brightness; int node; int trigger_lock; scalar_t__ work_flags; TYPE_1__* dev; int groups; } ;
struct device {int dummy; } ;
typedef int final_name ;
struct TYPE_6__ {scalar_t__ fwnode; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (TYPE_1__*) ;
 int LED_BRIGHT_HW_CHANGED ;
 scalar_t__ LED_FULL ;
 int LED_MAX_NAME_SIZE ;
 int PTR_ERR (TYPE_1__*) ;
 int dev_dbg (struct device*,char*,char*) ;
 int dev_err (struct device*,char*) ;
 int dev_name (TYPE_1__*) ;
 int dev_warn (struct device*,char*,char*,int ) ;
 TYPE_1__* device_create_with_groups (int ,struct device*,int ,struct led_classdev*,int ,char*,char*) ;
 int device_unregister (TYPE_1__*) ;
 int down_write (int *) ;
 int init_rwsem (int *) ;
 int led_add_brightness_hw_changed (struct led_classdev*) ;
 int led_classdev_next_name (char const*,char*,int) ;
 int led_compose_name (struct device*,struct led_init_data*,char*) ;
 int led_init_core (struct led_classdev*) ;
 int led_trigger_set_default (struct led_classdev*) ;
 int led_update_brightness (struct led_classdev*) ;
 int leds_class ;
 int leds_list ;
 int leds_list_lock ;
 int list_add_tail (int *,int *) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int up_write (int *) ;

int led_classdev_register_ext(struct device *parent,
         struct led_classdev *led_cdev,
         struct led_init_data *init_data)
{
 char composed_name[LED_MAX_NAME_SIZE];
 char final_name[LED_MAX_NAME_SIZE];
 const char *proposed_name = composed_name;
 int ret;

 if (init_data) {
  if (init_data->devname_mandatory && !init_data->devicename) {
   dev_err(parent, "Mandatory device name is missing");
   return -EINVAL;
  }
  ret = led_compose_name(parent, init_data, composed_name);
  if (ret < 0)
   return ret;
 } else {
  proposed_name = led_cdev->name;
 }

 ret = led_classdev_next_name(proposed_name, final_name, sizeof(final_name));
 if (ret < 0)
  return ret;

 mutex_init(&led_cdev->led_access);
 mutex_lock(&led_cdev->led_access);
 led_cdev->dev = device_create_with_groups(leds_class, parent, 0,
    led_cdev, led_cdev->groups, "%s", final_name);
 if (IS_ERR(led_cdev->dev)) {
  mutex_unlock(&led_cdev->led_access);
  return PTR_ERR(led_cdev->dev);
 }
 if (init_data && init_data->fwnode)
  led_cdev->dev->fwnode = init_data->fwnode;

 if (ret)
  dev_warn(parent, "Led %s renamed to %s due to name collision",
    led_cdev->name, dev_name(led_cdev->dev));

 if (led_cdev->flags & LED_BRIGHT_HW_CHANGED) {
  ret = led_add_brightness_hw_changed(led_cdev);
  if (ret) {
   device_unregister(led_cdev->dev);
   led_cdev->dev = ((void*)0);
   mutex_unlock(&led_cdev->led_access);
   return ret;
  }
 }

 led_cdev->work_flags = 0;







 down_write(&leds_list_lock);
 list_add_tail(&led_cdev->node, &leds_list);
 up_write(&leds_list_lock);

 if (!led_cdev->max_brightness)
  led_cdev->max_brightness = LED_FULL;

 led_update_brightness(led_cdev);

 led_init_core(led_cdev);





 mutex_unlock(&led_cdev->led_access);

 dev_dbg(parent, "Registered led device: %s\n",
   led_cdev->name);

 return 0;
}
