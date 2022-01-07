
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int hdmi_bus_fmt_color_depth(unsigned int bus_format)
{
 switch (bus_format) {
 case 139:
 case 128:
 case 136:
 case 132:
  return 8;

 case 142:
 case 131:
 case 138:
 case 135:
  return 10;

 case 141:
 case 130:
 case 137:
 case 134:
  return 12;

 case 140:
 case 129:
 case 133:
  return 16;

 default:
  return 0;
 }
}
