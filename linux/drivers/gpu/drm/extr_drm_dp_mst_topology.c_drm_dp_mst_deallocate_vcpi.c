
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_dp_mst_topology_mgr {int dummy; } ;
struct TYPE_2__ {scalar_t__ vcpi; scalar_t__ aligned_pbn; scalar_t__ pbn; scalar_t__ num_slots; } ;
struct drm_dp_mst_port {TYPE_1__ vcpi; } ;


 int drm_dp_mst_put_payload_id (struct drm_dp_mst_topology_mgr*,scalar_t__) ;
 int drm_dp_mst_put_port_malloc (struct drm_dp_mst_port*) ;

void drm_dp_mst_deallocate_vcpi(struct drm_dp_mst_topology_mgr *mgr,
    struct drm_dp_mst_port *port)
{
 if (!port->vcpi.vcpi)
  return;

 drm_dp_mst_put_payload_id(mgr, port->vcpi.vcpi);
 port->vcpi.num_slots = 0;
 port->vcpi.pbn = 0;
 port->vcpi.aligned_pbn = 0;
 port->vcpi.vcpi = 0;
 drm_dp_mst_put_port_malloc(port);
}
