
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum mipi_dsi_pixel_format { ____Placeholder_mipi_dsi_pixel_format } mipi_dsi_pixel_format ;


 int DIV_ROUND_CLOSEST (int,int) ;
 int mipi_dsi_pixel_format_to_bpp (int) ;

__attribute__((used)) static u32 dsi_clk_from_pclk(u32 pclk, enum mipi_dsi_pixel_format fmt,
        int lane_count)
{
 u32 dsi_clk_khz;
 u32 bpp = mipi_dsi_pixel_format_to_bpp(fmt);



 dsi_clk_khz = DIV_ROUND_CLOSEST(pclk * bpp, lane_count);

 return dsi_clk_khz;
}
