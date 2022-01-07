
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 int RED ;
 int blinkm_led_common_set (struct led_classdev*,int,int ) ;

__attribute__((used)) static int blinkm_led_red_set(struct led_classdev *led_cdev,
          enum led_brightness value)
{
 return blinkm_led_common_set(led_cdev, value, RED);
}
