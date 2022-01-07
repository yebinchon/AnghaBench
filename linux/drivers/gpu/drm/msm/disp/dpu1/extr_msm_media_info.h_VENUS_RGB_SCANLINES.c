
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MSM_MEDIA_ALIGN (int,unsigned int) ;

__attribute__((used)) static unsigned int VENUS_RGB_SCANLINES(int color_fmt, int height)
{
 unsigned int alignment = 0;

 if (!height)
  return 0;

 switch (color_fmt) {
 case 129:
  alignment = 32;
  break;
 case 128:
 case 130:
 case 131:
  alignment = 16;
  break;
 default:
  return 0;
 }

 return MSM_MEDIA_ALIGN(height, alignment);
}
