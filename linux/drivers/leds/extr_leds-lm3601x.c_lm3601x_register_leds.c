
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct led_classdev {int flags; int max_brightness; int brightness_set_blocking; } ;
struct led_flash_setting {int val; int step; int max; int min; } ;
struct TYPE_4__ {struct led_classdev led_cdev; struct led_flash_setting brightness; struct led_flash_setting timeout; int * ops; } ;
struct lm3601x_led {scalar_t__ led_mode; TYPE_2__ fled_cdev; TYPE_1__* client; int torch_current_max; int flash_current_max; int max_flash_timeout; } ;
struct led_init_data {char* default_label; int devicename; struct fwnode_handle* fwnode; } ;
struct fwnode_handle {int dummy; } ;
struct TYPE_3__ {int dev; int name; } ;


 int DIV_ROUND_UP (int ,int ) ;
 int LED_DEV_CAP_FLASH ;
 scalar_t__ LM3601X_LED_TORCH ;
 int LM3601X_LOWER_STEP_US ;
 int LM3601X_MIN_STROBE_I_UA ;
 int LM3601X_MIN_TIMEOUT_US ;
 int LM3601X_TORCH_REG_DIV ;
 int flash_ops ;
 int led_classdev_flash_register_ext (int *,TYPE_2__*,struct led_init_data*) ;
 int lm3601x_brightness_set ;

__attribute__((used)) static int lm3601x_register_leds(struct lm3601x_led *led,
     struct fwnode_handle *fwnode)
{
 struct led_classdev *led_cdev;
 struct led_flash_setting *setting;
 struct led_init_data init_data = {};

 led->fled_cdev.ops = &flash_ops;

 setting = &led->fled_cdev.timeout;
 setting->min = LM3601X_MIN_TIMEOUT_US;
 setting->max = led->max_flash_timeout;
 setting->step = LM3601X_LOWER_STEP_US;
 setting->val = led->max_flash_timeout;

 setting = &led->fled_cdev.brightness;
 setting->min = LM3601X_MIN_STROBE_I_UA;
 setting->max = led->flash_current_max;
 setting->step = LM3601X_TORCH_REG_DIV;
 setting->val = led->flash_current_max;

 led_cdev = &led->fled_cdev.led_cdev;
 led_cdev->brightness_set_blocking = lm3601x_brightness_set;
 led_cdev->max_brightness = DIV_ROUND_UP(led->torch_current_max,
      LM3601X_TORCH_REG_DIV);
 led_cdev->flags |= LED_DEV_CAP_FLASH;

 init_data.fwnode = fwnode;
 init_data.devicename = led->client->name;
 init_data.default_label = (led->led_mode == LM3601X_LED_TORCH) ?
     "torch" : "infrared";

 return led_classdev_flash_register_ext(&led->client->dev,
      &led->fled_cdev, &init_data);
}
