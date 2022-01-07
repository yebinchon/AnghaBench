
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MSM_MEDIA_ALIGN (int,int) ;

__attribute__((used)) static unsigned int VENUS_Y_STRIDE(int color_fmt, int width)
{
 unsigned int stride = 0;

 if (!width)
  return 0;

 switch (color_fmt) {
 case 130:
 case 134:
 case 132:
 case 131:
  stride = MSM_MEDIA_ALIGN(width, 128);
  break;
 case 133:
  stride = MSM_MEDIA_ALIGN(width, 192);
  stride = MSM_MEDIA_ALIGN(stride * 4 / 3, 256);
  break;
 case 128:
  stride = MSM_MEDIA_ALIGN(width * 2, 256);
  break;
 case 129:
  stride = MSM_MEDIA_ALIGN(width * 2, 128);
  break;
 }

 return stride;
}
