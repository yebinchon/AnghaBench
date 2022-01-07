
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mipi_dsi_pixel_format { ____Placeholder_mipi_dsi_pixel_format } mipi_dsi_pixel_format ;


 int COL_FMT_16BPP ;
 int COL_FMT_18BPP ;
 int COL_FMT_24BPP ;





__attribute__((used)) static int color_format_from_dsi_format(enum mipi_dsi_pixel_format format)
{
 switch (format) {
 case 131:
  return COL_FMT_16BPP;
 case 130:
 case 129:
  return COL_FMT_18BPP;
 case 128:
  return COL_FMT_24BPP;
 default:
  return COL_FMT_24BPP;
 }
}
