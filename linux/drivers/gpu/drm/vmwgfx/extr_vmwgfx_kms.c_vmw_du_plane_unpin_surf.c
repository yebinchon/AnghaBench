
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmw_plane_state {TYPE_1__* surf; scalar_t__ pinned; } ;
struct TYPE_2__ {int res; } ;


 int DRM_ERROR (char*) ;
 int vmw_resource_unpin (int *) ;
 int vmw_surface_unreference (TYPE_1__**) ;

void vmw_du_plane_unpin_surf(struct vmw_plane_state *vps,
        bool unreference)
{
 if (vps->surf) {
  if (vps->pinned) {
   vmw_resource_unpin(&vps->surf->res);
   vps->pinned--;
  }

  if (unreference) {
   if (vps->pinned)
    DRM_ERROR("Surface still pinned\n");
   vmw_surface_unreference(&vps->surf);
  }
 }
}
