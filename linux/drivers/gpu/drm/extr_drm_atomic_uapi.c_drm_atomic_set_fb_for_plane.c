
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_plane_state {int fb; struct drm_plane* plane; } ;
struct TYPE_4__ {int id; } ;
struct drm_plane {int name; TYPE_2__ base; } ;
struct TYPE_3__ {int id; } ;
struct drm_framebuffer {TYPE_1__ base; } ;


 int DRM_DEBUG_ATOMIC (char*,int ,int ,struct drm_plane_state*,...) ;
 int drm_framebuffer_assign (int *,struct drm_framebuffer*) ;

void
drm_atomic_set_fb_for_plane(struct drm_plane_state *plane_state,
       struct drm_framebuffer *fb)
{
 struct drm_plane *plane = plane_state->plane;

 if (fb)
  DRM_DEBUG_ATOMIC("Set [FB:%d] for [PLANE:%d:%s] state %p\n",
     fb->base.id, plane->base.id, plane->name,
     plane_state);
 else
  DRM_DEBUG_ATOMIC("Set [NOFB] for [PLANE:%d:%s] state %p\n",
     plane->base.id, plane->name, plane_state);

 drm_framebuffer_assign(&plane_state->fb, fb);
}
