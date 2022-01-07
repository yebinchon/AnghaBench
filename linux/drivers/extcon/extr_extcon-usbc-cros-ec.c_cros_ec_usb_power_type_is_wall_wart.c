
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool cros_ec_usb_power_type_is_wall_wart(unsigned int type,
      unsigned int role)
{
 switch (type) {





 case 130:
 case 136:
  return 1;
 case 131:
 case 134:
 case 137:
 case 135:
 case 132:
 case 128:
 case 129:
 case 133:
 default:
  return 0;
 }
}
