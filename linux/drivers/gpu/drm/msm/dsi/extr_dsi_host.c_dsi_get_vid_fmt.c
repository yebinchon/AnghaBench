
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mipi_dsi_pixel_format { ____Placeholder_mipi_dsi_pixel_format } mipi_dsi_pixel_format ;
typedef enum dsi_vid_dst_format { ____Placeholder_dsi_vid_dst_format } dsi_vid_dst_format ;






 int VID_DST_FORMAT_RGB565 ;
 int VID_DST_FORMAT_RGB666 ;
 int VID_DST_FORMAT_RGB666_LOOSE ;
 int VID_DST_FORMAT_RGB888 ;

__attribute__((used)) static inline enum dsi_vid_dst_format dsi_get_vid_fmt(
    const enum mipi_dsi_pixel_format mipi_fmt)
{
 switch (mipi_fmt) {
 case 128: return VID_DST_FORMAT_RGB888;
 case 130: return VID_DST_FORMAT_RGB666_LOOSE;
 case 129: return VID_DST_FORMAT_RGB666;
 case 131: return VID_DST_FORMAT_RGB565;
 default: return VID_DST_FORMAT_RGB888;
 }
}
