
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned long g2d_get_buf_bpp(unsigned int format)
{
 unsigned long bpp;

 switch (format) {
 case 128:
 case 133:
  bpp = 4;
  break;
 case 131:
 case 130:
 case 135:
 case 129:
 case 134:
  bpp = 2;
  break;
 case 132:
  bpp = 3;
  break;
 default:
  bpp = 1;
  break;
 }

 return bpp;
}
