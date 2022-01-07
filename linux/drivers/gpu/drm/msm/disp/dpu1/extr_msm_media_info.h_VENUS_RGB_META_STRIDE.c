
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MSM_MEDIA_ALIGN (int,int) ;
 int MSM_MEDIA_ROUNDUP (int,int) ;

__attribute__((used)) static unsigned int VENUS_RGB_META_STRIDE(int color_fmt, int width)
{
 int rgb_meta_stride;

 if (!width)
  return 0;

 switch (color_fmt) {
 case 128:
 case 129:
 case 130:
  rgb_meta_stride = MSM_MEDIA_ROUNDUP(width, 16);
  return MSM_MEDIA_ALIGN(rgb_meta_stride, 64);
 }

 return 0;
}
