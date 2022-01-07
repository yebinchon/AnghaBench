
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int val; } ;
struct led_classdev {int max_brightness; int flags; int brightness_set_blocking; int name; } ;
struct led_classdev_flash {TYPE_1__ timeout; struct led_classdev led_cdev; int * ops; } ;
struct max77693_sub_led {int fled_id; int flash_timeout; struct led_classdev_flash fled_cdev; } ;
struct max77693_led_device {scalar_t__ iout_joint; } ;
struct max77693_led_config_data {int* iout_torch_max; int * label; } ;


 size_t FLED1 ;
 size_t FLED2 ;
 int LED_DEV_CAP_FLASH ;
 int TORCH_IOUT_STEP ;
 int flash_ops ;
 int max77693_init_flash_settings (struct max77693_sub_led*,struct max77693_led_config_data*) ;
 int max77693_led_brightness_set ;
 struct max77693_led_device* sub_led_to_led (struct max77693_sub_led*) ;

__attribute__((used)) static void max77693_init_fled_cdev(struct max77693_sub_led *sub_led,
    struct max77693_led_config_data *led_cfg)
{
 struct max77693_led_device *led = sub_led_to_led(sub_led);
 int fled_id = sub_led->fled_id;
 struct led_classdev_flash *fled_cdev;
 struct led_classdev *led_cdev;


 fled_cdev = &sub_led->fled_cdev;
 fled_cdev->ops = &flash_ops;
 led_cdev = &fled_cdev->led_cdev;

 led_cdev->name = led_cfg->label[fled_id];

 led_cdev->brightness_set_blocking = max77693_led_brightness_set;
 led_cdev->max_brightness = (led->iout_joint ?
     led_cfg->iout_torch_max[FLED1] +
     led_cfg->iout_torch_max[FLED2] :
     led_cfg->iout_torch_max[fled_id]) /
       TORCH_IOUT_STEP;
 led_cdev->flags |= LED_DEV_CAP_FLASH;

 max77693_init_flash_settings(sub_led, led_cfg);


 sub_led->flash_timeout = fled_cdev->timeout.val;
}
