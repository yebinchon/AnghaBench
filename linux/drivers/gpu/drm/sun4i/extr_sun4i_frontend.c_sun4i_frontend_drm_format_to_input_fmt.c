
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_format_info {int is_yuv; } ;


 int EINVAL ;
 int SUN4I_FRONTEND_INPUT_FMT_DATA_FMT_RGB ;
 int SUN4I_FRONTEND_INPUT_FMT_DATA_FMT_YUV411 ;
 int SUN4I_FRONTEND_INPUT_FMT_DATA_FMT_YUV420 ;
 int SUN4I_FRONTEND_INPUT_FMT_DATA_FMT_YUV422 ;
 int SUN4I_FRONTEND_INPUT_FMT_DATA_FMT_YUV444 ;
 scalar_t__ drm_format_info_is_yuv_sampling_411 (struct drm_format_info const*) ;
 scalar_t__ drm_format_info_is_yuv_sampling_420 (struct drm_format_info const*) ;
 scalar_t__ drm_format_info_is_yuv_sampling_422 (struct drm_format_info const*) ;
 scalar_t__ drm_format_info_is_yuv_sampling_444 (struct drm_format_info const*) ;

__attribute__((used)) static int
sun4i_frontend_drm_format_to_input_fmt(const struct drm_format_info *format,
           u32 *val)
{
 if (!format->is_yuv)
  *val = SUN4I_FRONTEND_INPUT_FMT_DATA_FMT_RGB;
 else if (drm_format_info_is_yuv_sampling_411(format))
  *val = SUN4I_FRONTEND_INPUT_FMT_DATA_FMT_YUV411;
 else if (drm_format_info_is_yuv_sampling_420(format))
  *val = SUN4I_FRONTEND_INPUT_FMT_DATA_FMT_YUV420;
 else if (drm_format_info_is_yuv_sampling_422(format))
  *val = SUN4I_FRONTEND_INPUT_FMT_DATA_FMT_YUV422;
 else if (drm_format_info_is_yuv_sampling_444(format))
  *val = SUN4I_FRONTEND_INPUT_FMT_DATA_FMT_YUV444;
 else
  return -EINVAL;

 return 0;
}
