
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MSM_MEDIA_ALIGN (int,int) ;
 int MSM_MEDIA_ROUNDUP (int,int) ;

__attribute__((used)) static unsigned int VENUS_UV_META_SCANLINES(int color_fmt, int height)
{
 int uv_tile_height = 0, uv_meta_scanlines;

 if (!height)
  return 0;

 switch (color_fmt) {
 case 129:
  uv_tile_height = 8;
  break;
 case 130:
 case 128:
  uv_tile_height = 4;
  break;
 default:
  return 0;
 }

 uv_meta_scanlines = MSM_MEDIA_ROUNDUP((height+1)>>1, uv_tile_height);
 return MSM_MEDIA_ALIGN(uv_meta_scanlines, 16);
}
