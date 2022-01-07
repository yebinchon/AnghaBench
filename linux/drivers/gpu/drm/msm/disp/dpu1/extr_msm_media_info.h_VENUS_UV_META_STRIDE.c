
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MSM_MEDIA_ALIGN (int,int) ;
 int MSM_MEDIA_ROUNDUP (int,int) ;

__attribute__((used)) static unsigned int VENUS_UV_META_STRIDE(int color_fmt, int width)
{
 int uv_tile_width = 0, uv_meta_stride;

 if (!width)
  return 0;

 switch (color_fmt) {
 case 129:
 case 128:
  uv_tile_width = 16;
  break;
 case 130:
  uv_tile_width = 24;
  break;
 default:
  return 0;
 }

 uv_meta_stride = MSM_MEDIA_ROUNDUP((width+1)>>1, uv_tile_width);
 return MSM_MEDIA_ALIGN(uv_meta_stride, 64);
}
