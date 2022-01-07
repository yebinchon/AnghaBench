
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_dp_mst_topology_mgr {int dummy; } ;
struct TYPE_2__ {scalar_t__ num_slots; } ;
struct drm_dp_mst_port {TYPE_1__ vcpi; } ;



void drm_dp_mst_reset_vcpi_slots(struct drm_dp_mst_topology_mgr *mgr, struct drm_dp_mst_port *port)
{





 port->vcpi.num_slots = 0;
}
