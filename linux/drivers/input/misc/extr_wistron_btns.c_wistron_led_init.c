
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct device {int dummy; } ;
struct TYPE_4__ {void* brightness; } ;


 int FE_MAIL_LED ;
 int FE_WIFI_LED ;
 void* LED_FULL ;
 void* LED_OFF ;
 int MAIL_LED ;
 int WIFI ;
 int bios_get_default_setting (int ) ;
 int bios_set_state (int ,void*) ;
 scalar_t__ led_classdev_register (struct device*,TYPE_1__*) ;
 int leds_present ;
 TYPE_1__ wistron_mail_led ;
 TYPE_1__ wistron_wifi_led ;

__attribute__((used)) static void wistron_led_init(struct device *parent)
{
 if (leds_present & FE_WIFI_LED) {
  u16 wifi = bios_get_default_setting(WIFI);
  if (wifi & 1) {
   wistron_wifi_led.brightness = (wifi & 2) ? LED_FULL : LED_OFF;
   if (led_classdev_register(parent, &wistron_wifi_led))
    leds_present &= ~FE_WIFI_LED;
   else
    bios_set_state(WIFI, wistron_wifi_led.brightness);

  } else
   leds_present &= ~FE_WIFI_LED;
 }

 if (leds_present & FE_MAIL_LED) {

  wistron_mail_led.brightness = LED_OFF;
  if (led_classdev_register(parent, &wistron_mail_led))
   leds_present &= ~FE_MAIL_LED;
  else
   bios_set_state(MAIL_LED, wistron_mail_led.brightness);
 }
}
