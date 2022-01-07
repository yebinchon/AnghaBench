
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum mipi_dsi_pixel_format { ____Placeholder_mipi_dsi_pixel_format } mipi_dsi_pixel_format ;







__attribute__((used)) static u32 dsi_get_bpp(const enum mipi_dsi_pixel_format fmt)
{
 switch (fmt) {
 case 131: return 16;
 case 129: return 18;
 case 130:
 case 128:
 default: return 24;
 }
}
