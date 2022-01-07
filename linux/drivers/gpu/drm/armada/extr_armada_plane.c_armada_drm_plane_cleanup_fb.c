
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_plane_state {TYPE_3__* fb; } ;
struct TYPE_4__ {int id; } ;
struct drm_plane {int name; TYPE_1__ base; } ;
struct TYPE_5__ {int id; } ;
struct TYPE_6__ {TYPE_2__ base; } ;


 int DRM_DEBUG_KMS (char*,int ,int ,int ) ;
 int drm_framebuffer_put (TYPE_3__*) ;

void armada_drm_plane_cleanup_fb(struct drm_plane *plane,
 struct drm_plane_state *old_state)
{
 DRM_DEBUG_KMS("[PLANE:%d:%s] [FB:%d]\n",
  plane->base.id, plane->name,
  old_state->fb ? old_state->fb->base.id : 0);

 if (old_state->fb)
  drm_framebuffer_put(old_state->fb);
}
