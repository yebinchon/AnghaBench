
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int bdw_format_to_drm(int format)
{
 int bdw_pixel_formats_index = 6;

 switch (format) {
 case 133:
  bdw_pixel_formats_index = 0;
  break;
 case 131:
  bdw_pixel_formats_index = 1;
  break;
 case 130:
  bdw_pixel_formats_index = 2;
  break;
 case 129:
  bdw_pixel_formats_index = 3;
  break;
 case 132:
  bdw_pixel_formats_index = 4;
  break;
 case 128:
  bdw_pixel_formats_index = 5;
  break;

 default:
  break;
 }

 return bdw_pixel_formats_index;
}
