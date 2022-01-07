
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum mipi_dsi_pixel_format { ____Placeholder_mipi_dsi_pixel_format } mipi_dsi_pixel_format ;






 int MISSING_CASE (int) ;
 int VID_MODE_FORMAT_RGB565 ;
 int VID_MODE_FORMAT_RGB666 ;
 int VID_MODE_FORMAT_RGB666_PACKED ;
 int VID_MODE_FORMAT_RGB888 ;

__attribute__((used)) static u32 pixel_format_to_reg(enum mipi_dsi_pixel_format fmt)
{
 switch (fmt) {
 case 128:
  return VID_MODE_FORMAT_RGB888;
 case 130:
  return VID_MODE_FORMAT_RGB666;
 case 129:
  return VID_MODE_FORMAT_RGB666_PACKED;
 case 131:
  return VID_MODE_FORMAT_RGB565;
 default:
  MISSING_CASE(fmt);
  return VID_MODE_FORMAT_RGB666;
 }
}
