
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int dummy; } ;


 int LED_OFF ;
 int led_set_brightness (struct led_classdev*,int ) ;

__attribute__((used)) static void timer_trig_deactivate(struct led_classdev *led_cdev)
{

 led_set_brightness(led_cdev, LED_OFF);
}
