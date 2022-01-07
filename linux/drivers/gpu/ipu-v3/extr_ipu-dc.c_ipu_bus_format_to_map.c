
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int IPU_DC_MAP_BGR24 ;
 int IPU_DC_MAP_BGR666 ;
 int IPU_DC_MAP_GBR24 ;
 int IPU_DC_MAP_LVDS666 ;
 int IPU_DC_MAP_RGB24 ;
 int IPU_DC_MAP_RGB565 ;






 int WARN_ON (int) ;

__attribute__((used)) static int ipu_bus_format_to_map(u32 fmt)
{
 switch (fmt) {
 default:
  WARN_ON(1);

 case 128:
  return IPU_DC_MAP_RGB24;
 case 131:
  return IPU_DC_MAP_RGB565;
 case 132:
  return IPU_DC_MAP_GBR24;
 case 130:
  return IPU_DC_MAP_BGR666;
 case 129:
  return IPU_DC_MAP_LVDS666;
 case 133:
  return IPU_DC_MAP_BGR24;
 }
}
