
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_dp_mst_port {struct drm_dp_mst_branch* parent; struct drm_dp_mst_branch* mstb; } ;
struct drm_dp_mst_branch {struct drm_dp_mst_port* port_parent; } ;



__attribute__((used)) static struct drm_dp_mst_port *drm_dp_get_last_connected_port_to_mstb(struct drm_dp_mst_branch *mstb)
{
 if (!mstb->port_parent)
  return ((void*)0);

 if (mstb->port_parent->mstb != mstb)
  return mstb->port_parent;

 return drm_dp_get_last_connected_port_to_mstb(mstb->port_parent->parent);
}
