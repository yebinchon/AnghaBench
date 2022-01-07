
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_dp_mst_topology_mgr {int dummy; } ;
struct TYPE_2__ {int num_slots; } ;
struct drm_dp_mst_port {TYPE_1__ vcpi; } ;


 struct drm_dp_mst_port* drm_dp_mst_topology_get_port_validated (struct drm_dp_mst_topology_mgr*,struct drm_dp_mst_port*) ;
 int drm_dp_mst_topology_put_port (struct drm_dp_mst_port*) ;

int drm_dp_mst_get_vcpi_slots(struct drm_dp_mst_topology_mgr *mgr, struct drm_dp_mst_port *port)
{
 int slots = 0;
 port = drm_dp_mst_topology_get_port_validated(mgr, port);
 if (!port)
  return slots;

 slots = port->vcpi.num_slots;
 drm_dp_mst_topology_put_port(port);
 return slots;
}
