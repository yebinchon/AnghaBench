
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ const uint32_t ;
struct drm_plane_state {scalar_t__ pixel_blend_mode; int alpha; TYPE_3__* fb; TYPE_1__* plane; } ;
struct TYPE_6__ {TYPE_2__* format; } ;
struct TYPE_5__ {scalar_t__ format; } ;
struct TYPE_4__ {scalar_t__ type; } ;


 unsigned int ARRAY_SIZE (scalar_t__ const*) ;



 scalar_t__ DRM_MODE_BLEND_PREMULTI ;
 scalar_t__ DRM_PLANE_TYPE_OVERLAY ;

__attribute__((used)) static void
fill_blending_from_plane_state(const struct drm_plane_state *plane_state,
          bool *per_pixel_alpha, bool *global_alpha,
          int *global_alpha_value)
{
 *per_pixel_alpha = 0;
 *global_alpha = 0;
 *global_alpha_value = 0xff;

 if (plane_state->plane->type != DRM_PLANE_TYPE_OVERLAY)
  return;

 if (plane_state->pixel_blend_mode == DRM_MODE_BLEND_PREMULTI) {
  static const uint32_t alpha_formats[] = {
   129,
   128,
   130,
  };
  uint32_t format = plane_state->fb->format->format;
  unsigned int i;

  for (i = 0; i < ARRAY_SIZE(alpha_formats); ++i) {
   if (format == alpha_formats[i]) {
    *per_pixel_alpha = 1;
    break;
   }
  }
 }

 if (plane_state->alpha < 0xffff) {
  *global_alpha = 1;
  *global_alpha_value = plane_state->alpha >> 8;
 }
}
