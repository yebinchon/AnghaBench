
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_dp_mst_topology_state {int dummy; } ;
struct drm_dp_mst_topology_mgr {int base; struct drm_device* dev; } ;
struct TYPE_2__ {int connection_mutex; } ;
struct drm_device {TYPE_1__ mode_config; } ;
struct drm_atomic_state {int dummy; } ;


 int WARN_ON (int) ;
 int drm_atomic_get_private_obj_state (struct drm_atomic_state*,int *) ;
 int drm_modeset_is_locked (int *) ;
 struct drm_dp_mst_topology_state* to_dp_mst_topology_state (int ) ;

struct drm_dp_mst_topology_state *drm_atomic_get_mst_topology_state(struct drm_atomic_state *state,
            struct drm_dp_mst_topology_mgr *mgr)
{
 struct drm_device *dev = mgr->dev;

 WARN_ON(!drm_modeset_is_locked(&dev->mode_config.connection_mutex));
 return to_dp_mst_topology_state(drm_atomic_get_private_obj_state(state, &mgr->base));
}
