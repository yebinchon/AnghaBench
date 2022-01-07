
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum mipi_dsi_pixel_format { ____Placeholder_mipi_dsi_pixel_format } mipi_dsi_pixel_format ;


 int MIPI_DSI_FMT_RGB565 ;
 int MIPI_DSI_FMT_RGB666 ;
 int MIPI_DSI_FMT_RGB666_PACKED ;
 int MIPI_DSI_FMT_RGB888 ;
 int MISSING_CASE (int) ;





enum mipi_dsi_pixel_format pixel_format_from_register_bits(u32 fmt)
{

 switch (fmt) {
 case 128:
  return MIPI_DSI_FMT_RGB888;
 case 130:
  return MIPI_DSI_FMT_RGB666;
 case 129:
  return MIPI_DSI_FMT_RGB666_PACKED;
 case 131:
  return MIPI_DSI_FMT_RGB565;
 default:
  MISSING_CASE(fmt);
  return MIPI_DSI_FMT_RGB666;
 }
}
