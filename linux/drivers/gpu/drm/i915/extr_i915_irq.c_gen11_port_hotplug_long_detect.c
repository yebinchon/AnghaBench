
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum hpd_pin { ____Placeholder_hpd_pin } hpd_pin ;


 int GEN11_HOTPLUG_CTL_LONG_DETECT (int ) ;




 int PORT_TC1 ;
 int PORT_TC2 ;
 int PORT_TC3 ;
 int PORT_TC4 ;

__attribute__((used)) static bool gen11_port_hotplug_long_detect(enum hpd_pin pin, u32 val)
{
 switch (pin) {
 case 131:
  return val & GEN11_HOTPLUG_CTL_LONG_DETECT(PORT_TC1);
 case 130:
  return val & GEN11_HOTPLUG_CTL_LONG_DETECT(PORT_TC2);
 case 129:
  return val & GEN11_HOTPLUG_CTL_LONG_DETECT(PORT_TC3);
 case 128:
  return val & GEN11_HOTPLUG_CTL_LONG_DETECT(PORT_TC4);
 default:
  return 0;
 }
}
