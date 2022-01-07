
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct skl_wm_params {int dummy; } ;
struct TYPE_2__ {int crtc_w; int rotation; int src; struct drm_framebuffer* fb; int plane; } ;
struct intel_plane_state {TYPE_1__ base; } ;
struct intel_plane {scalar_t__ id; } ;
struct intel_crtc_state {int dummy; } ;
struct drm_framebuffer {int modifier; int format; } ;


 scalar_t__ PLANE_CURSOR ;
 int drm_rect_width (int *) ;
 int skl_adjusted_plane_pixel_rate (struct intel_crtc_state const*,struct intel_plane_state const*) ;
 int skl_compute_wm_params (struct intel_crtc_state const*,int,int ,int ,int ,int ,struct skl_wm_params*,int) ;
 struct intel_plane* to_intel_plane (int ) ;

__attribute__((used)) static int
skl_compute_plane_wm_params(const struct intel_crtc_state *crtc_state,
       const struct intel_plane_state *plane_state,
       struct skl_wm_params *wp, int color_plane)
{
 struct intel_plane *plane = to_intel_plane(plane_state->base.plane);
 const struct drm_framebuffer *fb = plane_state->base.fb;
 int width;

 if (plane->id == PLANE_CURSOR) {
  width = plane_state->base.crtc_w;
 } else {





  width = drm_rect_width(&plane_state->base.src) >> 16;
 }

 return skl_compute_wm_params(crtc_state, width,
         fb->format, fb->modifier,
         plane_state->base.rotation,
         skl_adjusted_plane_pixel_rate(crtc_state, plane_state),
         wp, color_plane);
}
