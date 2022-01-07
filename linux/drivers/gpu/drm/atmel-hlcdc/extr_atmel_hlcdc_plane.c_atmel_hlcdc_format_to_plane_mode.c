
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ATMEL_HLCDC_ARGB1555_MODE ;
 int ATMEL_HLCDC_ARGB4444_MODE ;
 int ATMEL_HLCDC_ARGB8888_MODE ;
 int ATMEL_HLCDC_AYUV_MODE ;
 int ATMEL_HLCDC_C8_MODE ;
 int ATMEL_HLCDC_NV21_MODE ;
 int ATMEL_HLCDC_NV61_MODE ;
 int ATMEL_HLCDC_RGB565_MODE ;
 int ATMEL_HLCDC_RGB888_MODE ;
 int ATMEL_HLCDC_RGBA4444_MODE ;
 int ATMEL_HLCDC_RGBA8888_MODE ;
 int ATMEL_HLCDC_UYVY_MODE ;
 int ATMEL_HLCDC_VYUY_MODE ;
 int ATMEL_HLCDC_XRGB4444_MODE ;
 int ATMEL_HLCDC_XRGB8888_MODE ;
 int ATMEL_HLCDC_YUV420_MODE ;
 int ATMEL_HLCDC_YUV422_MODE ;
 int ATMEL_HLCDC_YUYV_MODE ;
 int ATMEL_HLCDC_YVYU_MODE ;
 int ENOTSUPP ;

__attribute__((used)) static int atmel_hlcdc_format_to_plane_mode(u32 format, u32 *mode)
{
 switch (format) {
 case 142:
  *mode = ATMEL_HLCDC_C8_MODE;
  break;
 case 133:
  *mode = ATMEL_HLCDC_XRGB4444_MODE;
  break;
 case 145:
  *mode = ATMEL_HLCDC_ARGB4444_MODE;
  break;
 case 137:
  *mode = ATMEL_HLCDC_RGBA4444_MODE;
  break;
 case 139:
  *mode = ATMEL_HLCDC_RGB565_MODE;
  break;
 case 138:
  *mode = ATMEL_HLCDC_RGB888_MODE;
  break;
 case 146:
  *mode = ATMEL_HLCDC_ARGB1555_MODE;
  break;
 case 132:
  *mode = ATMEL_HLCDC_XRGB8888_MODE;
  break;
 case 144:
  *mode = ATMEL_HLCDC_ARGB8888_MODE;
  break;
 case 136:
  *mode = ATMEL_HLCDC_RGBA8888_MODE;
  break;
 case 143:
  *mode = ATMEL_HLCDC_AYUV_MODE;
  break;
 case 129:
  *mode = ATMEL_HLCDC_YUYV_MODE;
  break;
 case 135:
  *mode = ATMEL_HLCDC_UYVY_MODE;
  break;
 case 128:
  *mode = ATMEL_HLCDC_YVYU_MODE;
  break;
 case 134:
  *mode = ATMEL_HLCDC_VYUY_MODE;
  break;
 case 141:
  *mode = ATMEL_HLCDC_NV21_MODE;
  break;
 case 140:
  *mode = ATMEL_HLCDC_NV61_MODE;
  break;
 case 131:
  *mode = ATMEL_HLCDC_YUV420_MODE;
  break;
 case 130:
  *mode = ATMEL_HLCDC_YUV422_MODE;
  break;
 default:
  return -ENOTSUPP;
 }

 return 0;
}
