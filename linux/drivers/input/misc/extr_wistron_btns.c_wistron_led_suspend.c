
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FE_MAIL_LED ;
 int FE_WIFI_LED ;
 int led_classdev_suspend (int *) ;
 int leds_present ;
 int wistron_mail_led ;
 int wistron_wifi_led ;

__attribute__((used)) static inline void wistron_led_suspend(void)
{
 if (leds_present & FE_MAIL_LED)
  led_classdev_suspend(&wistron_mail_led);

 if (leds_present & FE_WIFI_LED)
  led_classdev_suspend(&wistron_wifi_led);
}
