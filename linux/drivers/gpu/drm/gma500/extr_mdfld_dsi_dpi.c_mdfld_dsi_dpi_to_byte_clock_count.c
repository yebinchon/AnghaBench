
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static u16 mdfld_dsi_dpi_to_byte_clock_count(int pixel_clock_count,
      int num_lane, int bpp)
{
 return (u16)((pixel_clock_count * bpp) / (num_lane * 8));
}
