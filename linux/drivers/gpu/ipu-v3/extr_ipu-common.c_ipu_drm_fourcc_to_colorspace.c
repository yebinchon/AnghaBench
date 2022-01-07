
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum ipu_color_space { ____Placeholder_ipu_color_space } ipu_color_space ;
 int IPUV3_COLORSPACE_RGB ;
 int IPUV3_COLORSPACE_UNKNOWN ;
 int IPUV3_COLORSPACE_YUV ;

enum ipu_color_space ipu_drm_fourcc_to_colorspace(u32 drm_fourcc)
{
 switch (drm_fourcc) {
 case 160:
 case 162:
 case 141:
 case 153:
 case 145:
 case 157:
 case 143:
 case 155:
 case 159:
 case 135:
 case 136:
 case 139:
 case 151:
 case 158:
 case 161:
 case 140:
 case 152:
 case 144:
 case 156:
 case 142:
 case 154:
 case 138:
 case 150:
  return IPUV3_COLORSPACE_RGB;
 case 131:
 case 137:
 case 134:
 case 130:
 case 133:
 case 129:
 case 132:
 case 128:
 case 149:
 case 147:
 case 148:
 case 146:
  return IPUV3_COLORSPACE_YUV;
 default:
  return IPUV3_COLORSPACE_UNKNOWN;
 }
}
