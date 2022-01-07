
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_netdev_data {int work; int mode; struct led_classdev* led_cdev; } ;
struct led_classdev {int brightness; int blink_brightness; int max_brightness; } ;


 int LED_OFF ;
 int NETDEV_LED_LINK ;
 int NETDEV_LED_MODE_LINKUP ;
 int NETDEV_LED_RX ;
 int NETDEV_LED_TX ;
 int led_set_brightness (struct led_classdev*,int) ;
 int schedule_delayed_work (int *,int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void set_baseline_state(struct led_netdev_data *trigger_data)
{
 int current_brightness;
 struct led_classdev *led_cdev = trigger_data->led_cdev;

 current_brightness = led_cdev->brightness;
 if (current_brightness)
  led_cdev->blink_brightness = current_brightness;
 if (!led_cdev->blink_brightness)
  led_cdev->blink_brightness = led_cdev->max_brightness;

 if (!test_bit(NETDEV_LED_MODE_LINKUP, &trigger_data->mode))
  led_set_brightness(led_cdev, LED_OFF);
 else {
  if (test_bit(NETDEV_LED_LINK, &trigger_data->mode))
   led_set_brightness(led_cdev,
        led_cdev->blink_brightness);
  else
   led_set_brightness(led_cdev, LED_OFF);




  if (test_bit(NETDEV_LED_TX, &trigger_data->mode) ||
      test_bit(NETDEV_LED_RX, &trigger_data->mode))
   schedule_delayed_work(&trigger_data->work, 0);
 }
}
