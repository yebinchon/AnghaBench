
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int visible; struct drm_framebuffer* fb; } ;
struct intel_plane_state {TYPE_1__ base; } ;
struct intel_crtc_state {unsigned int pixel_rate; } ;
struct drm_framebuffer {TYPE_2__* format; } ;
struct TYPE_4__ {unsigned int* cpp; int num_planes; scalar_t__ is_yuv; } ;



unsigned int intel_plane_data_rate(const struct intel_crtc_state *crtc_state,
       const struct intel_plane_state *plane_state)
{
 const struct drm_framebuffer *fb = plane_state->base.fb;
 unsigned int cpp;

 if (!plane_state->base.visible)
  return 0;

 cpp = fb->format->cpp[0];







 if (fb->format->is_yuv && fb->format->num_planes > 1)
  cpp *= 4;

 return cpp * crtc_state->pixel_rate;
}
