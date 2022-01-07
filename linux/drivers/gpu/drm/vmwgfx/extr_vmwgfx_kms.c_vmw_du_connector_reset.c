
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_connector_state {int base; } ;
struct drm_connector {scalar_t__ state; } ;


 int DRM_ERROR (char*) ;
 int GFP_KERNEL ;
 int __drm_atomic_helper_connector_destroy_state (scalar_t__) ;
 int __drm_atomic_helper_connector_reset (struct drm_connector*,int *) ;
 int kfree (int ) ;
 struct vmw_connector_state* kzalloc (int,int ) ;
 int vmw_connector_state_to_vcs (scalar_t__) ;

void vmw_du_connector_reset(struct drm_connector *connector)
{
 struct vmw_connector_state *vcs;


 if (connector->state) {
  __drm_atomic_helper_connector_destroy_state(connector->state);

  kfree(vmw_connector_state_to_vcs(connector->state));
 }

 vcs = kzalloc(sizeof(*vcs), GFP_KERNEL);

 if (!vcs) {
  DRM_ERROR("Cannot allocate vmw_connector_state\n");
  return;
 }

 __drm_atomic_helper_connector_reset(connector, &vcs->base);
}
