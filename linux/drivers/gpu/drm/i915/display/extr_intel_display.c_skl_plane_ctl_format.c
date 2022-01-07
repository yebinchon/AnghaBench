
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
 int MISSING_CASE (int) ;
 int PLANE_CTL_FORMAT_INDEXED ;
 int PLANE_CTL_FORMAT_NV12 ;
 int PLANE_CTL_FORMAT_P010 ;
 int PLANE_CTL_FORMAT_P012 ;
 int PLANE_CTL_FORMAT_P016 ;
 int PLANE_CTL_FORMAT_RGB_565 ;
 int PLANE_CTL_FORMAT_XRGB_16161616F ;
 int PLANE_CTL_FORMAT_XRGB_2101010 ;
 int PLANE_CTL_FORMAT_XRGB_8888 ;
 int PLANE_CTL_FORMAT_Y210 ;
 int PLANE_CTL_FORMAT_Y212 ;
 int PLANE_CTL_FORMAT_Y216 ;
 int PLANE_CTL_FORMAT_Y410 ;
 int PLANE_CTL_FORMAT_Y412 ;
 int PLANE_CTL_FORMAT_Y416 ;
 int PLANE_CTL_FORMAT_YUV422 ;
 int PLANE_CTL_ORDER_RGBX ;
 int PLANE_CTL_YUV422_UYVY ;
 int PLANE_CTL_YUV422_VYUY ;
 int PLANE_CTL_YUV422_YUYV ;
 int PLANE_CTL_YUV422_YVYU ;

__attribute__((used)) static u32 skl_plane_ctl_format(u32 pixel_format)
{
 switch (pixel_format) {
 case 149:
  return PLANE_CTL_FORMAT_INDEXED;
 case 144:
  return PLANE_CTL_FORMAT_RGB_565;
 case 139:
 case 152:
  return PLANE_CTL_FORMAT_XRGB_8888 | PLANE_CTL_ORDER_RGBX;
 case 136:
 case 150:
  return PLANE_CTL_FORMAT_XRGB_8888;
 case 140:
  return PLANE_CTL_FORMAT_XRGB_2101010 | PLANE_CTL_ORDER_RGBX;
 case 137:
  return PLANE_CTL_FORMAT_XRGB_2101010;
 case 141:
 case 153:
  return PLANE_CTL_FORMAT_XRGB_16161616F | PLANE_CTL_ORDER_RGBX;
 case 138:
 case 151:
  return PLANE_CTL_FORMAT_XRGB_16161616F;
 case 129:
  return PLANE_CTL_FORMAT_YUV422 | PLANE_CTL_YUV422_YUYV;
 case 128:
  return PLANE_CTL_FORMAT_YUV422 | PLANE_CTL_YUV422_YVYU;
 case 143:
  return PLANE_CTL_FORMAT_YUV422 | PLANE_CTL_YUV422_UYVY;
 case 142:
  return PLANE_CTL_FORMAT_YUV422 | PLANE_CTL_YUV422_VYUY;
 case 148:
  return PLANE_CTL_FORMAT_NV12;
 case 147:
  return PLANE_CTL_FORMAT_P010;
 case 146:
  return PLANE_CTL_FORMAT_P012;
 case 145:
  return PLANE_CTL_FORMAT_P016;
 case 132:
  return PLANE_CTL_FORMAT_Y210;
 case 131:
  return PLANE_CTL_FORMAT_Y212;
 case 130:
  return PLANE_CTL_FORMAT_Y216;
 case 133:
  return PLANE_CTL_FORMAT_Y410;
 case 135:
  return PLANE_CTL_FORMAT_Y412;
 case 134:
  return PLANE_CTL_FORMAT_Y416;
 default:
  MISSING_CASE(pixel_format);
 }

 return 0;
}
