
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 int ns2_led_set (struct led_classdev*,int) ;

__attribute__((used)) static int ns2_led_set_blocking(struct led_classdev *led_cdev,
   enum led_brightness value)
{
 ns2_led_set(led_cdev, value);
 return 0;
}
