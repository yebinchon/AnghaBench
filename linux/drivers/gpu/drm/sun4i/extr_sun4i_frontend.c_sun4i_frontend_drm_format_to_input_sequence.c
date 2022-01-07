
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct drm_format_info {int format; } ;
 int EINVAL ;
 scalar_t__ SUN4I_FRONTEND_INPUT_FMT_DATA_PS_BGRX ;
 scalar_t__ SUN4I_FRONTEND_INPUT_FMT_DATA_PS_UV ;
 scalar_t__ SUN4I_FRONTEND_INPUT_FMT_DATA_PS_UYVY ;
 scalar_t__ SUN4I_FRONTEND_INPUT_FMT_DATA_PS_VU ;
 scalar_t__ SUN4I_FRONTEND_INPUT_FMT_DATA_PS_VYUY ;
 scalar_t__ SUN4I_FRONTEND_INPUT_FMT_DATA_PS_XRGB ;
 scalar_t__ SUN4I_FRONTEND_INPUT_FMT_DATA_PS_YUYV ;
 scalar_t__ SUN4I_FRONTEND_INPUT_FMT_DATA_PS_YVYU ;
 scalar_t__ drm_format_info_is_yuv_planar (struct drm_format_info const*) ;

__attribute__((used)) static int
sun4i_frontend_drm_format_to_input_sequence(const struct drm_format_info *format,
         u32 *val)
{

 if (drm_format_info_is_yuv_planar(format)) {
  *val = 0;
  return 0;
 }

 switch (format->format) {
 case 137:
  *val = SUN4I_FRONTEND_INPUT_FMT_DATA_PS_BGRX;
  return 0;

 case 136:
  *val = SUN4I_FRONTEND_INPUT_FMT_DATA_PS_UV;
  return 0;

 case 135:
  *val = SUN4I_FRONTEND_INPUT_FMT_DATA_PS_UV;
  return 0;

 case 134:
  *val = SUN4I_FRONTEND_INPUT_FMT_DATA_PS_VU;
  return 0;

 case 133:
  *val = SUN4I_FRONTEND_INPUT_FMT_DATA_PS_VU;
  return 0;

 case 132:
  *val = SUN4I_FRONTEND_INPUT_FMT_DATA_PS_UYVY;
  return 0;

 case 131:
  *val = SUN4I_FRONTEND_INPUT_FMT_DATA_PS_VYUY;
  return 0;

 case 130:
  *val = SUN4I_FRONTEND_INPUT_FMT_DATA_PS_XRGB;
  return 0;

 case 129:
  *val = SUN4I_FRONTEND_INPUT_FMT_DATA_PS_YUYV;
  return 0;

 case 128:
  *val = SUN4I_FRONTEND_INPUT_FMT_DATA_PS_YVYU;
  return 0;

 default:
  return -EINVAL;
 }
}
