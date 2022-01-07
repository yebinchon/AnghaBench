
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int MEDIA_BUS_FMT_RGB444_1X12 ;
 int MEDIA_BUS_FMT_RGB565_1X16 ;
 int MEDIA_BUS_FMT_RGB666_1X18 ;
 int MEDIA_BUS_FMT_RGB888_1X24 ;
 int of_property_read_u32 (struct device_node const*,char*,int*) ;

__attribute__((used)) static int atmel_hlcdc_of_bus_fmt(const struct device_node *ep)
{
 u32 bus_width;
 int ret;

 ret = of_property_read_u32(ep, "bus-width", &bus_width);
 if (ret == -EINVAL)
  return 0;
 if (ret)
  return ret;

 switch (bus_width) {
 case 12:
  return MEDIA_BUS_FMT_RGB444_1X12;
 case 16:
  return MEDIA_BUS_FMT_RGB565_1X16;
 case 18:
  return MEDIA_BUS_FMT_RGB666_1X18;
 case 24:
  return MEDIA_BUS_FMT_RGB888_1X24;
 default:
  return -EINVAL;
 }
}
