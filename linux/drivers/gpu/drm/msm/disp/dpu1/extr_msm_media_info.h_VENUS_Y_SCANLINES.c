
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MSM_MEDIA_ALIGN (int,int) ;

__attribute__((used)) static unsigned int VENUS_Y_SCANLINES(int color_fmt, int height)
{
 unsigned int sclines = 0;

 if (!height)
  return 0;

 switch (color_fmt) {
 case 130:
 case 134:
 case 132:
 case 131:
 case 129:
  sclines = MSM_MEDIA_ALIGN(height, 32);
  break;
 case 133:
 case 128:
  sclines = MSM_MEDIA_ALIGN(height, 16);
  break;
 }

 return sclines;
}
