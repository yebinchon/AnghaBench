
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum surface_pixel_format { ____Placeholder_surface_pixel_format } surface_pixel_format ;
typedef enum pixel_format { ____Placeholder_pixel_format } pixel_format ;


 int PIXEL_FORMAT_420BPP10 ;
 int PIXEL_FORMAT_420BPP8 ;
 int PIXEL_FORMAT_ARGB2101010 ;
 int PIXEL_FORMAT_ARGB2101010_XRBIAS ;
 int PIXEL_FORMAT_ARGB8888 ;
 int PIXEL_FORMAT_FP16 ;
 int PIXEL_FORMAT_INDEX8 ;
 int PIXEL_FORMAT_RGB565 ;
 int PIXEL_FORMAT_UNKNOWN ;
__attribute__((used)) static enum pixel_format convert_pixel_format_to_dalsurface(
  enum surface_pixel_format surface_pixel_format)
{
 enum pixel_format dal_pixel_format = PIXEL_FORMAT_UNKNOWN;

 switch (surface_pixel_format) {
 case 133:
  dal_pixel_format = PIXEL_FORMAT_INDEX8;
  break;
 case 138:
  dal_pixel_format = PIXEL_FORMAT_RGB565;
  break;
 case 132:
  dal_pixel_format = PIXEL_FORMAT_RGB565;
  break;
 case 134:
  dal_pixel_format = PIXEL_FORMAT_ARGB8888;
  break;
 case 139:
  dal_pixel_format = PIXEL_FORMAT_ARGB8888;
  break;
 case 135:
  dal_pixel_format = PIXEL_FORMAT_ARGB2101010;
  break;
 case 141:
  dal_pixel_format = PIXEL_FORMAT_ARGB2101010;
  break;
 case 140:
  dal_pixel_format = PIXEL_FORMAT_ARGB2101010_XRBIAS;
  break;
 case 142:
 case 136:
  dal_pixel_format = PIXEL_FORMAT_FP16;
  break;
 case 129:
 case 128:
  dal_pixel_format = PIXEL_FORMAT_420BPP8;
  break;
 case 131:
 case 130:
  dal_pixel_format = PIXEL_FORMAT_420BPP10;
  break;
 case 137:
 default:
  dal_pixel_format = PIXEL_FORMAT_UNKNOWN;
  break;
 }
 return dal_pixel_format;
}
