
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MSM_MEDIA_ALIGN (int,int) ;
 int MSM_MEDIA_ROUNDUP (int,int) ;

__attribute__((used)) static unsigned int VENUS_Y_META_STRIDE(int color_fmt, int width)
{
 int y_tile_width = 0, y_meta_stride;

 if (!width)
  return 0;

 switch (color_fmt) {
 case 129:
 case 128:
  y_tile_width = 32;
  break;
 case 130:
  y_tile_width = 48;
  break;
 default:
  return 0;
 }

 y_meta_stride = MSM_MEDIA_ROUNDUP(width, y_tile_width);
 return MSM_MEDIA_ALIGN(y_meta_stride, 64);
}
