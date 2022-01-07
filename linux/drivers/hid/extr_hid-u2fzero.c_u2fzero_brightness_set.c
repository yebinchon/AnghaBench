
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int brightness; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 int LED_OFF ;
 int u2fzero_blink (struct led_classdev*) ;

__attribute__((used)) static int u2fzero_brightness_set(struct led_classdev *ldev,
      enum led_brightness brightness)
{
 ldev->brightness = LED_OFF;
 if (brightness)
  return u2fzero_blink(ldev);
 else
  return 0;
}
