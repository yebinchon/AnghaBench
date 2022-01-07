
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum hpd_pin { ____Placeholder_hpd_pin } hpd_pin ;





 int ICP_DDIA_HPD_LONG_DETECT ;
 int ICP_DDIB_HPD_LONG_DETECT ;
 int TGP_DDIC_HPD_LONG_DETECT ;

__attribute__((used)) static bool tgp_ddi_port_hotplug_long_detect(enum hpd_pin pin, u32 val)
{
 switch (pin) {
 case 130:
  return val & ICP_DDIA_HPD_LONG_DETECT;
 case 129:
  return val & ICP_DDIB_HPD_LONG_DETECT;
 case 128:
  return val & TGP_DDIC_HPD_LONG_DETECT;
 default:
  return 0;
 }
}
