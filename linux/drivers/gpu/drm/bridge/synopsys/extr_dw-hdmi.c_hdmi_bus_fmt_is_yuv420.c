
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool hdmi_bus_fmt_is_yuv420(unsigned int bus_format)
{
 switch (bus_format) {
 case 128:
 case 131:
 case 130:
 case 129:
  return 1;

 default:
  return 0;
 }
}
