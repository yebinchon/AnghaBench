
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum hpd_pin { ____Placeholder_hpd_pin } hpd_pin ;
 int ICP_TC_HPD_LONG_DETECT (int ) ;
 int PORT_TC1 ;
 int PORT_TC2 ;
 int PORT_TC3 ;
 int PORT_TC4 ;
 int PORT_TC5 ;
 int PORT_TC6 ;

__attribute__((used)) static bool tgp_tc_port_hotplug_long_detect(enum hpd_pin pin, u32 val)
{
 switch (pin) {
 case 133:
  return val & ICP_TC_HPD_LONG_DETECT(PORT_TC1);
 case 132:
  return val & ICP_TC_HPD_LONG_DETECT(PORT_TC2);
 case 131:
  return val & ICP_TC_HPD_LONG_DETECT(PORT_TC3);
 case 130:
  return val & ICP_TC_HPD_LONG_DETECT(PORT_TC4);
 case 129:
  return val & ICP_TC_HPD_LONG_DETECT(PORT_TC5);
 case 128:
  return val & ICP_TC_HPD_LONG_DETECT(PORT_TC6);
 default:
  return 0;
 }
}
