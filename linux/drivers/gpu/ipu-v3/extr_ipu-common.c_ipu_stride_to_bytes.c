
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EINVAL ;
int ipu_stride_to_bytes(u32 pixel_stride, u32 pixelformat)
{
 switch (pixelformat) {
 case 131:
 case 128:
 case 130:
 case 141:
 case 139:
 case 140:
 case 138:






  return (8 * pixel_stride) >> 3;
 case 135:
 case 129:
 case 134:
  return (16 * pixel_stride) >> 3;
 case 143:
 case 137:
  return (24 * pixel_stride) >> 3;
 case 142:
 case 136:
 case 133:
 case 132:
  return (32 * pixel_stride) >> 3;
 default:
  break;
 }

 return -EINVAL;
}
