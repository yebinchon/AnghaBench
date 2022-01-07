
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_plane_state {int dummy; } ;
struct drm_plane_state {int dummy; } ;
struct drm_plane {int dummy; } ;


 int vmw_du_plane_unpin_surf (struct vmw_plane_state*,int) ;
 struct vmw_plane_state* vmw_plane_state_to_vps (struct drm_plane_state*) ;

void
vmw_du_plane_cleanup_fb(struct drm_plane *plane,
   struct drm_plane_state *old_state)
{
 struct vmw_plane_state *vps = vmw_plane_state_to_vps(old_state);

 vmw_du_plane_unpin_surf(vps, 0);
}
