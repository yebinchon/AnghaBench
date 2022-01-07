
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_7__ {unsigned int rotation; int visible; struct drm_framebuffer* fb; int plane; } ;
struct intel_plane_state {TYPE_2__* color_plane; TYPE_1__ base; } ;
struct TYPE_11__ {int id; } ;
struct TYPE_12__ {int name; TYPE_5__ base; } ;
struct intel_plane {scalar_t__ (* max_stride ) (struct intel_plane*,int ,int ,unsigned int) ;TYPE_6__ base; } ;
struct TYPE_10__ {int id; } ;
struct drm_framebuffer {TYPE_4__ base; int modifier; TYPE_3__* format; } ;
struct TYPE_9__ {int format; } ;
struct TYPE_8__ {scalar_t__ stride; } ;


 int DRM_DEBUG_KMS (char*,int ,scalar_t__,int ,int ,scalar_t__) ;
 int EINVAL ;
 scalar_t__ intel_plane_can_remap (struct intel_plane_state const*) ;
 scalar_t__ stub1 (struct intel_plane*,int ,int ,unsigned int) ;
 struct intel_plane* to_intel_plane (int ) ;

int intel_plane_check_stride(const struct intel_plane_state *plane_state)
{
 struct intel_plane *plane = to_intel_plane(plane_state->base.plane);
 const struct drm_framebuffer *fb = plane_state->base.fb;
 unsigned int rotation = plane_state->base.rotation;
 u32 stride, max_stride;







 if (intel_plane_can_remap(plane_state) &&
     !plane_state->base.visible)
  return 0;


 stride = plane_state->color_plane[0].stride;
 max_stride = plane->max_stride(plane, fb->format->format,
           fb->modifier, rotation);

 if (stride > max_stride) {
  DRM_DEBUG_KMS("[FB:%d] stride (%d) exceeds [PLANE:%d:%s] max stride (%d)\n",
         fb->base.id, stride,
         plane->base.base.id, plane->base.name, max_stride);
  return -EINVAL;
 }

 return 0;
}
