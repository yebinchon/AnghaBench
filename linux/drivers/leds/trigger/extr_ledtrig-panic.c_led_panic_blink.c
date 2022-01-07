
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LED_FULL ;
 int LED_OFF ;
 int led_trigger_event (int ,int ) ;
 int trigger ;

__attribute__((used)) static long led_panic_blink(int state)
{
 led_trigger_event(trigger, state ? LED_FULL : LED_OFF);
 return 0;
}
