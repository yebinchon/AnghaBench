
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum ipu_color_space { ____Placeholder_ipu_color_space } ipu_color_space ;


 int IPUV3_COLORSPACE_RGB ;
 int IPUV3_COLORSPACE_UNKNOWN ;
 int IPUV3_COLORSPACE_YUV ;

enum ipu_color_space ipu_mbus_code_to_colorspace(u32 mbus_code)
{
 switch (mbus_code & 0xf000) {
 case 0x1000:
  return IPUV3_COLORSPACE_RGB;
 case 0x2000:
  return IPUV3_COLORSPACE_YUV;
 default:
  return IPUV3_COLORSPACE_UNKNOWN;
 }
}
