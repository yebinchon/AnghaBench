
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 int FSG_LED_WLAN_BIT ;
 int* latch_address ;
 int latch_value ;

__attribute__((used)) static void fsg_led_wlan_set(struct led_classdev *led_cdev,
        enum led_brightness value)
{
 if (value) {
  latch_value &= ~(1 << FSG_LED_WLAN_BIT);
  *latch_address = latch_value;
 } else {
  latch_value |= (1 << FSG_LED_WLAN_BIT);
  *latch_address = latch_value;
 }
}
