
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dpcd_downstream_port_max_bpc { ____Placeholder_dpcd_downstream_port_max_bpc } dpcd_downstream_port_max_bpc ;







__attribute__((used)) static int translate_dpcd_max_bpc(enum dpcd_downstream_port_max_bpc bpc)
{
 switch (bpc) {
 case 128:
  return 8;
 case 131:
  return 10;
 case 130:
  return 12;
 case 129:
  return 16;
 default:
  break;
 }

 return -1;
}
