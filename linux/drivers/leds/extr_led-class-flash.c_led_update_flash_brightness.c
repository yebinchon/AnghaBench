
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct led_flash_setting {int val; } ;
struct led_classdev_flash {struct led_flash_setting brightness; } ;


 int call_flash_op (struct led_classdev_flash*,int ,int *) ;
 int flash_brightness_get ;
 scalar_t__ has_flash_op (struct led_classdev_flash*,int ) ;

int led_update_flash_brightness(struct led_classdev_flash *fled_cdev)
{
 struct led_flash_setting *s = &fled_cdev->brightness;
 u32 brightness;

 if (has_flash_op(fled_cdev, flash_brightness_get)) {
  int ret = call_flash_op(fled_cdev, flash_brightness_get,
      &brightness);
  if (ret < 0)
   return ret;

  s->val = brightness;
 }

 return 0;
}
