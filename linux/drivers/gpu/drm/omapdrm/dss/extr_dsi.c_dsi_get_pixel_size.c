
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum omap_dss_dsi_pixel_format { ____Placeholder_omap_dss_dsi_pixel_format } omap_dss_dsi_pixel_format ;


 int BUG () ;





__attribute__((used)) static u8 dsi_get_pixel_size(enum omap_dss_dsi_pixel_format fmt)
{
 switch (fmt) {
 case 128:
 case 130:
  return 24;
 case 129:
  return 18;
 case 131:
  return 16;
 default:
  BUG();
  return 0;
 }
}
