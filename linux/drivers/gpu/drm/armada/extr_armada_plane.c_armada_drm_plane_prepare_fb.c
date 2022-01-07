
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
 int drm_framebuffer_get (TYPE_3__*) ;

int armada_drm_plane_prepare_fb(struct drm_plane *plane,
 struct drm_plane_state *state)
{
 DRM_DEBUG_KMS("[PLANE:%d:%s] [FB:%d]\n",
  plane->base.id, plane->name,
  state->fb ? state->fb->base.id : 0);





 if (state->fb)
  drm_framebuffer_get(state->fb);
 return 0;
}
