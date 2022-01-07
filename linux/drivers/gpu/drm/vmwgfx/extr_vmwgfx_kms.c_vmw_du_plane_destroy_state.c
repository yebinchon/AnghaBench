
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_plane_state {scalar_t__ bo; scalar_t__ surf; } ;
struct drm_plane_state {int dummy; } ;
struct drm_plane {int dummy; } ;


 int drm_atomic_helper_plane_destroy_state (struct drm_plane*,struct drm_plane_state*) ;
 int vmw_bo_unreference (scalar_t__*) ;
 struct vmw_plane_state* vmw_plane_state_to_vps (struct drm_plane_state*) ;
 int vmw_surface_unreference (scalar_t__*) ;

void
vmw_du_plane_destroy_state(struct drm_plane *plane,
      struct drm_plane_state *state)
{
 struct vmw_plane_state *vps = vmw_plane_state_to_vps(state);



 if (vps->surf)
  vmw_surface_unreference(&vps->surf);

 if (vps->bo)
  vmw_bo_unreference(&vps->bo);

 drm_atomic_helper_plane_destroy_state(plane, state);
}
