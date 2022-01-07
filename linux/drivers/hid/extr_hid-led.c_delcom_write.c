
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int dummy; } ;
struct hidled_led {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 int delcom_enable_led (struct hidled_led*) ;
 int delcom_set_pwm (struct hidled_led*) ;
 struct hidled_led* to_hidled_led (struct led_classdev*) ;

__attribute__((used)) static int delcom_write(struct led_classdev *cdev, enum led_brightness br)
{
 struct hidled_led *led = to_hidled_led(cdev);
 int ret;






 ret = delcom_enable_led(led);
 if (ret)
  return ret;

 return delcom_set_pwm(led);
}
