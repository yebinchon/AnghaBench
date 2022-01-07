
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum ipu_color_space { ____Placeholder_ipu_color_space } ipu_color_space ;


 int IPUV3_COLORSPACE_RGB ;
 int IPUV3_COLORSPACE_UNKNOWN ;
 int IPUV3_COLORSPACE_YUV ;
enum ipu_color_space ipu_pixelformat_to_colorspace(u32 pixelformat)
{
 switch (pixelformat) {
 case 131:
 case 128:
 case 130:
 case 134:
 case 129:
 case 142:
 case 140:
 case 141:
 case 139:
  return IPUV3_COLORSPACE_YUV;
 case 137:
 case 145:
 case 138:
 case 147:
 case 133:
 case 144:
 case 143:
 case 136:
 case 135:
 case 146:
 case 132:
  return IPUV3_COLORSPACE_RGB;
 default:
  return IPUV3_COLORSPACE_UNKNOWN;
 }
}
