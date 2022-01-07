
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
bool ipu_pixelformat_is_planar(u32 pixelformat)
{
 switch (pixelformat) {
 case 130:
 case 128:
 case 129:
 case 134:
 case 132:
 case 133:
 case 131:
  return 1;
 }

 return 0;
}
