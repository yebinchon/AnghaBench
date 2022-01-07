
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mipi_dsi_pixel_format { ____Placeholder_mipi_dsi_pixel_format } mipi_dsi_pixel_format ;
typedef enum dsi_color { ____Placeholder_dsi_color } dsi_color ;


 int DRM_DEBUG_DRIVER (char*) ;
 int DSI_RGB565_CONF1 ;
 int DSI_RGB666_CONF1 ;
 int DSI_RGB666_CONF2 ;
 int DSI_RGB888 ;





__attribute__((used)) static enum dsi_color dsi_color_from_mipi(enum mipi_dsi_pixel_format fmt)
{
 switch (fmt) {
 case 128:
  return DSI_RGB888;
 case 130:
  return DSI_RGB666_CONF2;
 case 129:
  return DSI_RGB666_CONF1;
 case 131:
  return DSI_RGB565_CONF1;
 default:
  DRM_DEBUG_DRIVER("MIPI color invalid, so we use rgb888\n");
 }
 return DSI_RGB888;
}
