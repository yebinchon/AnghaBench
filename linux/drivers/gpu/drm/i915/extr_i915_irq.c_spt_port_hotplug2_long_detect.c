
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum hpd_pin { ____Placeholder_hpd_pin } hpd_pin ;



 int PORTE_HOTPLUG_LONG_DETECT ;

__attribute__((used)) static bool spt_port_hotplug2_long_detect(enum hpd_pin pin, u32 val)
{
 switch (pin) {
 case 128:
  return val & PORTE_HOTPLUG_LONG_DETECT;
 default:
  return 0;
 }
}
