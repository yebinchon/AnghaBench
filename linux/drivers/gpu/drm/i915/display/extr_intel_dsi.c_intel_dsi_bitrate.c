
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dsi {int pclk; int lane_count; int pixel_format; } ;


 scalar_t__ WARN_ON (int) ;
 int mipi_dsi_pixel_format_to_bpp (int ) ;

int intel_dsi_bitrate(const struct intel_dsi *intel_dsi)
{
 int bpp = mipi_dsi_pixel_format_to_bpp(intel_dsi->pixel_format);

 if (WARN_ON(bpp < 0))
  bpp = 16;

 return intel_dsi->pclk * bpp / intel_dsi->lane_count;
}
