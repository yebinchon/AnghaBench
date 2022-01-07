
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_init_data {int dummy; } ;
struct led_flash_ops {int strobe_set; } ;
struct led_classdev {int flags; int flash_resume; int brightness_set_blocking; } ;
struct led_classdev_flash {struct led_flash_ops* ops; struct led_classdev led_cdev; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int LED_DEV_CAP_FLASH ;
 int led_classdev_register_ext (struct device*,struct led_classdev*,struct led_init_data*) ;
 int led_flash_init_sysfs_groups (struct led_classdev_flash*) ;
 int led_flash_resume ;

int led_classdev_flash_register_ext(struct device *parent,
        struct led_classdev_flash *fled_cdev,
        struct led_init_data *init_data)
{
 struct led_classdev *led_cdev;
 const struct led_flash_ops *ops;
 int ret;

 if (!fled_cdev)
  return -EINVAL;

 led_cdev = &fled_cdev->led_cdev;

 if (led_cdev->flags & LED_DEV_CAP_FLASH) {
  if (!led_cdev->brightness_set_blocking)
   return -EINVAL;

  ops = fled_cdev->ops;
  if (!ops || !ops->strobe_set)
   return -EINVAL;

  led_cdev->flash_resume = led_flash_resume;


  led_flash_init_sysfs_groups(fled_cdev);
 }


 ret = led_classdev_register_ext(parent, led_cdev, init_data);
 if (ret < 0)
  return ret;

 return 0;
}
