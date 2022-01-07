
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct led_flash_setting {int val; } ;
struct led_classdev {int flags; } ;
struct led_classdev_flash {struct led_flash_setting brightness; struct led_classdev led_cdev; } ;


 int LED_SUSPENDED ;
 int call_flash_op (struct led_classdev_flash*,int ,int ) ;
 int flash_brightness_set ;
 int led_clamp_align (struct led_flash_setting*) ;

int led_set_flash_brightness(struct led_classdev_flash *fled_cdev,
    u32 brightness)
{
 struct led_classdev *led_cdev = &fled_cdev->led_cdev;
 struct led_flash_setting *s = &fled_cdev->brightness;

 s->val = brightness;
 led_clamp_align(s);

 if (!(led_cdev->flags & LED_SUSPENDED))
  return call_flash_op(fled_cdev, flash_brightness_set, s->val);

 return 0;
}
