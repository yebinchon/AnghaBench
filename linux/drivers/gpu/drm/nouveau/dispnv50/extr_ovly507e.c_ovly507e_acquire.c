
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {struct drm_framebuffer* fb; } ;
struct nv50_wndw_atom {TYPE_3__ state; } ;
struct nv50_wndw {int dummy; } ;
struct TYPE_5__ {int cpp; } ;
struct nv50_head_atom {TYPE_2__ ovly; int state; } ;
struct drm_framebuffer {TYPE_1__* format; } ;
struct TYPE_4__ {int * cpp; } ;


 int DRM_PLANE_HELPER_NO_SCALING ;
 int drm_atomic_helper_check_plane_state (TYPE_3__*,int *,int ,int ,int,int) ;

int
ovly507e_acquire(struct nv50_wndw *wndw, struct nv50_wndw_atom *asyw,
   struct nv50_head_atom *asyh)
{
 const struct drm_framebuffer *fb = asyw->state.fb;
 int ret;

 ret = drm_atomic_helper_check_plane_state(&asyw->state, &asyh->state,
        DRM_PLANE_HELPER_NO_SCALING,
        DRM_PLANE_HELPER_NO_SCALING,
        1, 1);
 if (ret)
  return ret;

 asyh->ovly.cpp = fb->format->cpp[0];
 return 0;
}
