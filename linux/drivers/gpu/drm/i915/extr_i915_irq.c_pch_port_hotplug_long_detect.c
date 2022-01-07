
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum hpd_pin { ____Placeholder_hpd_pin } hpd_pin ;





 int PORTB_HOTPLUG_LONG_DETECT ;
 int PORTC_HOTPLUG_LONG_DETECT ;
 int PORTD_HOTPLUG_LONG_DETECT ;

__attribute__((used)) static bool pch_port_hotplug_long_detect(enum hpd_pin pin, u32 val)
{
 switch (pin) {
 case 130:
  return val & PORTB_HOTPLUG_LONG_DETECT;
 case 129:
  return val & PORTC_HOTPLUG_LONG_DETECT;
 case 128:
  return val & PORTD_HOTPLUG_LONG_DETECT;
 default:
  return 0;
 }
}
