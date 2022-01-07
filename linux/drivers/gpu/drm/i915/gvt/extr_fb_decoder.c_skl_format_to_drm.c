
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;






__attribute__((used)) static int skl_format_to_drm(int format, bool rgb_order, bool alpha,
 int yuv_order)
{
 int skl_pixel_formats_index = 12;

 switch (format) {
 case 132:
  skl_pixel_formats_index = 4;
  break;
 case 131:
  skl_pixel_formats_index = 5;
  break;
 case 129:
  if (rgb_order)
   skl_pixel_formats_index = alpha ? 6 : 7;
  else
   skl_pixel_formats_index = alpha ? 8 : 9;
  break;
 case 130:
  skl_pixel_formats_index = rgb_order ? 10 : 11;
  break;
 case 128:
  skl_pixel_formats_index = yuv_order >> 16;
  if (skl_pixel_formats_index > 3)
   return -EINVAL;
  break;

 default:
  break;
 }

 return skl_pixel_formats_index;
}
