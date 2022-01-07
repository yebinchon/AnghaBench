
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 int LED_FULL ;
 int LED_OFF ;
 int LO_ULED ;
 int get_latch_u5 () ;

__attribute__((used)) static enum led_brightness rb532_led_get(struct led_classdev *cdev)
{
 return (get_latch_u5() & LO_ULED) ? LED_FULL : LED_OFF;
}
