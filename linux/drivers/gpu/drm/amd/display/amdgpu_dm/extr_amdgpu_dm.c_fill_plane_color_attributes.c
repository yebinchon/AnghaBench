
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane_state {scalar_t__ color_range; int color_encoding; } ;
typedef enum surface_pixel_format { ____Placeholder_surface_pixel_format } surface_pixel_format ;
typedef enum dc_color_space { ____Placeholder_dc_color_space } dc_color_space ;


 int COLOR_SPACE_2020_YCBCR ;
 int COLOR_SPACE_SRGB ;
 int COLOR_SPACE_YCBCR601 ;
 int COLOR_SPACE_YCBCR601_LIMITED ;
 int COLOR_SPACE_YCBCR709 ;
 int COLOR_SPACE_YCBCR709_LIMITED ;



 scalar_t__ DRM_COLOR_YCBCR_FULL_RANGE ;
 int EINVAL ;
 int const SURFACE_PIXEL_FORMAT_VIDEO_BEGIN ;

__attribute__((used)) static int
fill_plane_color_attributes(const struct drm_plane_state *plane_state,
       const enum surface_pixel_format format,
       enum dc_color_space *color_space)
{
 bool full_range;

 *color_space = COLOR_SPACE_SRGB;


 if (format < SURFACE_PIXEL_FORMAT_VIDEO_BEGIN)
  return 0;

 full_range = (plane_state->color_range == DRM_COLOR_YCBCR_FULL_RANGE);

 switch (plane_state->color_encoding) {
 case 129:
  if (full_range)
   *color_space = COLOR_SPACE_YCBCR601;
  else
   *color_space = COLOR_SPACE_YCBCR601_LIMITED;
  break;

 case 128:
  if (full_range)
   *color_space = COLOR_SPACE_YCBCR709;
  else
   *color_space = COLOR_SPACE_YCBCR709_LIMITED;
  break;

 case 130:
  if (full_range)
   *color_space = COLOR_SPACE_2020_YCBCR;
  else
   return -EINVAL;
  break;

 default:
  return -EINVAL;
 }

 return 0;
}
