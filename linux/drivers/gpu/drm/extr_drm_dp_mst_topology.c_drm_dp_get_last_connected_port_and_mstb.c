
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_dp_mst_topology_mgr {int lock; int mst_primary; } ;
struct drm_dp_mst_port {int port_num; struct drm_dp_mst_branch* parent; } ;
struct drm_dp_mst_branch {int dummy; } ;


 struct drm_dp_mst_port* drm_dp_get_last_connected_port_to_mstb (struct drm_dp_mst_branch*) ;
 scalar_t__ drm_dp_mst_topology_try_get_mstb (struct drm_dp_mst_branch*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct drm_dp_mst_branch *
drm_dp_get_last_connected_port_and_mstb(struct drm_dp_mst_topology_mgr *mgr,
     struct drm_dp_mst_branch *mstb,
     int *port_num)
{
 struct drm_dp_mst_branch *rmstb = ((void*)0);
 struct drm_dp_mst_port *found_port;

 mutex_lock(&mgr->lock);
 if (!mgr->mst_primary)
  goto out;

 do {
  found_port = drm_dp_get_last_connected_port_to_mstb(mstb);
  if (!found_port)
   break;

  if (drm_dp_mst_topology_try_get_mstb(found_port->parent)) {
   rmstb = found_port->parent;
   *port_num = found_port->port_num;
  } else {

   mstb = found_port->parent;
  }
 } while (!rmstb);
out:
 mutex_unlock(&mgr->lock);
 return rmstb;
}
