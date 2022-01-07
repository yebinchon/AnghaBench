
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_plane_state {int base; } ;
struct drm_plane {scalar_t__ state; } ;


 int DRM_ERROR (char*) ;
 int GFP_KERNEL ;
 int __drm_atomic_helper_plane_reset (struct drm_plane*,int *) ;
 struct vmw_plane_state* kzalloc (int,int ) ;
 int vmw_du_plane_destroy_state (struct drm_plane*,scalar_t__) ;

void vmw_du_plane_reset(struct drm_plane *plane)
{
 struct vmw_plane_state *vps;


 if (plane->state)
  vmw_du_plane_destroy_state(plane, plane->state);

 vps = kzalloc(sizeof(*vps), GFP_KERNEL);

 if (!vps) {
  DRM_ERROR("Cannot allocate vmw_plane_state\n");
  return;
 }

 __drm_atomic_helper_plane_reset(plane, &vps->base);
}
