
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MSM_MEDIA_ALIGN (int,unsigned int) ;

__attribute__((used)) static unsigned int VENUS_RGB_STRIDE(int color_fmt, int width)
{
 unsigned int alignment = 0, bpp = 4;

 if (!width)
  return 0;

 switch (color_fmt) {
 case 129:
  alignment = 128;
  break;
 case 131:
  alignment = 256;
  bpp = 2;
  break;
 case 128:
 case 130:
  alignment = 256;
  break;
 default:
  return 0;
 }

 return MSM_MEDIA_ALIGN(width * bpp, alignment);
}
