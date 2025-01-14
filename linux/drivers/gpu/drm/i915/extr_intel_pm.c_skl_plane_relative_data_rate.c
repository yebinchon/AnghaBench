
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint_fixed_16_16_t ;
typedef int u64 ;
typedef int u32 ;
struct TYPE_3__ {int src; struct drm_framebuffer* fb; int visible; int plane; } ;
struct intel_plane_state {TYPE_1__ base; } ;
struct intel_plane {scalar_t__ id; } ;
struct intel_crtc_state {int dummy; } ;
struct drm_framebuffer {TYPE_2__* format; } ;
struct TYPE_4__ {int format; int * cpp; } ;


 scalar_t__ PLANE_CURSOR ;
 int drm_rect_height (int *) ;
 int drm_rect_width (int *) ;
 scalar_t__ is_planar_yuv_format (int) ;
 int mul_round_up_u32_fixed16 (int,int ) ;
 int skl_plane_downscale_amount (struct intel_crtc_state const*,struct intel_plane_state const*) ;
 struct intel_plane* to_intel_plane (int ) ;

__attribute__((used)) static u64
skl_plane_relative_data_rate(const struct intel_crtc_state *crtc_state,
        const struct intel_plane_state *plane_state,
        const int plane)
{
 struct intel_plane *intel_plane = to_intel_plane(plane_state->base.plane);
 u32 data_rate;
 u32 width = 0, height = 0;
 struct drm_framebuffer *fb;
 u32 format;
 uint_fixed_16_16_t down_scale_amount;
 u64 rate;

 if (!plane_state->base.visible)
  return 0;

 fb = plane_state->base.fb;
 format = fb->format->format;

 if (intel_plane->id == PLANE_CURSOR)
  return 0;
 if (plane == 1 && !is_planar_yuv_format(format))
  return 0;






 width = drm_rect_width(&plane_state->base.src) >> 16;
 height = drm_rect_height(&plane_state->base.src) >> 16;


 if (plane == 1 && is_planar_yuv_format(format)) {
  width /= 2;
  height /= 2;
 }

 data_rate = width * height;

 down_scale_amount = skl_plane_downscale_amount(crtc_state, plane_state);

 rate = mul_round_up_u32_fixed16(data_rate, down_scale_amount);

 rate *= fb->format->cpp[plane];
 return rate;
}
