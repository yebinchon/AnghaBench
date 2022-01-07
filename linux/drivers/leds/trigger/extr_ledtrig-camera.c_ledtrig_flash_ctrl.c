
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 int LED_FULL ;
 int LED_OFF ;
 int led_trigger_event (int ,int) ;
 int ledtrig_flash ;

void ledtrig_flash_ctrl(bool on)
{
 enum led_brightness brt = on ? LED_FULL : LED_OFF;

 led_trigger_event(ledtrig_flash, brt);
}
