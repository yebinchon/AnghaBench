
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum surface_pixel_format { ____Placeholder_surface_pixel_format } surface_pixel_format ;
typedef enum dcn_bw_defs { ____Placeholder_dcn_bw_defs } dcn_bw_defs ;
 int dcn_bw_rgb_sub_16 ;
 int dcn_bw_rgb_sub_32 ;
 int dcn_bw_rgb_sub_64 ;
 int dcn_bw_yuv420_sub_10 ;
 int dcn_bw_yuv420_sub_8 ;

__attribute__((used)) static enum dcn_bw_defs tl_pixel_format_to_bw_defs(enum surface_pixel_format format)
{
 switch (format) {
 case 137:
 case 132:
  return dcn_bw_rgb_sub_16;
 case 133:
 case 138:
 case 134:
 case 140:
 case 139:
  return dcn_bw_rgb_sub_32;
 case 136:
 case 135:
 case 141:
  return dcn_bw_rgb_sub_64;
 case 129:
 case 128:
  return dcn_bw_yuv420_sub_8;
 case 131:
 case 130:
  return dcn_bw_yuv420_sub_10;
 default:
  return dcn_bw_rgb_sub_32;
 }
}
