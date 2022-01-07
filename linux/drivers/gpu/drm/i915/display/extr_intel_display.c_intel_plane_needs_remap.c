
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {unsigned int rotation; int visible; struct drm_framebuffer* fb; int plane; } ;
struct intel_plane_state {TYPE_2__ base; } ;
struct intel_plane {scalar_t__ (* max_stride ) (struct intel_plane*,int ,int ,unsigned int) ;} ;
struct drm_framebuffer {int modifier; TYPE_1__* format; } ;
struct TYPE_3__ {int format; } ;


 scalar_t__ intel_fb_pitch (struct drm_framebuffer const*,int ,unsigned int) ;
 int intel_plane_can_remap (struct intel_plane_state const*) ;
 scalar_t__ stub1 (struct intel_plane*,int ,int ,unsigned int) ;
 struct intel_plane* to_intel_plane (int ) ;

__attribute__((used)) static bool intel_plane_needs_remap(const struct intel_plane_state *plane_state)
{
 struct intel_plane *plane = to_intel_plane(plane_state->base.plane);
 const struct drm_framebuffer *fb = plane_state->base.fb;
 unsigned int rotation = plane_state->base.rotation;
 u32 stride, max_stride;





 if (!plane_state->base.visible)
  return 0;

 if (!intel_plane_can_remap(plane_state))
  return 0;





 stride = intel_fb_pitch(fb, 0, rotation);
 max_stride = plane->max_stride(plane, fb->format->format,
           fb->modifier, rotation);

 return stride > max_stride;
}
