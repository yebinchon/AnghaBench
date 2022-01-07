
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv50_wndw_atom {int state; } ;
struct nv50_wndw {int dummy; } ;
struct nv50_head_atom {int state; } ;


 int DRM_PLANE_HELPER_NO_SCALING ;
 int drm_atomic_helper_check_plane_state (int *,int *,int ,int ,int,int) ;

int
wndwc37e_acquire(struct nv50_wndw *wndw, struct nv50_wndw_atom *asyw,
   struct nv50_head_atom *asyh)
{
 return drm_atomic_helper_check_plane_state(&asyw->state, &asyh->state,
         DRM_PLANE_HELPER_NO_SCALING,
         DRM_PLANE_HELPER_NO_SCALING,
         1, 1);
}
