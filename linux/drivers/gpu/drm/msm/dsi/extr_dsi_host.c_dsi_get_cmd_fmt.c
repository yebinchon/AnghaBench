
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mipi_dsi_pixel_format { ____Placeholder_mipi_dsi_pixel_format } mipi_dsi_pixel_format ;
typedef enum dsi_cmd_dst_format { ____Placeholder_dsi_cmd_dst_format } dsi_cmd_dst_format ;


 int CMD_DST_FORMAT_RGB565 ;
 int CMD_DST_FORMAT_RGB666 ;
 int CMD_DST_FORMAT_RGB888 ;





__attribute__((used)) static inline enum dsi_cmd_dst_format dsi_get_cmd_fmt(
    const enum mipi_dsi_pixel_format mipi_fmt)
{
 switch (mipi_fmt) {
 case 128: return CMD_DST_FORMAT_RGB888;
 case 129:
 case 130: return CMD_DST_FORMAT_RGB666;
 case 131: return CMD_DST_FORMAT_RGB565;
 default: return CMD_DST_FORMAT_RGB888;
 }
}
