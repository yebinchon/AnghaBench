
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int s32 ;





 scalar_t__ DRM_COLOR_YCBCR_LIMITED_RANGE ;
 int * yuv2rgb_bt2020 ;
 int * yuv2rgb_bt601_narrow ;
 int * yuv2rgb_bt601_wide ;
 int * yuv2rgb_bt709_narrow ;
 int * yuv2rgb_bt709_wide ;

const s32 *komeda_select_yuv2rgb_coeffs(u32 color_encoding, u32 color_range)
{
 bool narrow = color_range == DRM_COLOR_YCBCR_LIMITED_RANGE;
 const s32 *coeffs;

 switch (color_encoding) {
 case 128:
  coeffs = narrow ? yuv2rgb_bt709_narrow : yuv2rgb_bt709_wide;
  break;
 case 129:
  coeffs = narrow ? yuv2rgb_bt601_narrow : yuv2rgb_bt601_wide;
  break;
 case 130:
  coeffs = yuv2rgb_bt2020;
  break;
 default:
  coeffs = ((void*)0);
  break;
 }

 return coeffs;
}
