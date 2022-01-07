
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_dp_mst_topology_mgr {int dummy; } ;
struct TYPE_2__ {int ddc; } ;
struct drm_dp_mst_port {int pdt; int port_num; int ldps; TYPE_1__ aux; int cached_edid; int ddps; } ;
struct drm_connector {int dummy; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;






 int connector_status_connected ;
 int connector_status_disconnected ;
 struct drm_dp_mst_port* drm_dp_mst_topology_get_port_validated (struct drm_dp_mst_topology_mgr*,struct drm_dp_mst_port*) ;
 int drm_dp_mst_topology_put_port (struct drm_dp_mst_port*) ;
 int drm_get_edid (struct drm_connector*,int *) ;

enum drm_connector_status drm_dp_mst_detect_port(struct drm_connector *connector,
       struct drm_dp_mst_topology_mgr *mgr, struct drm_dp_mst_port *port)
{
 enum drm_connector_status status = connector_status_disconnected;


 port = drm_dp_mst_topology_get_port_validated(mgr, port);
 if (!port)
  return connector_status_disconnected;

 if (!port->ddps)
  goto out;

 switch (port->pdt) {
 case 129:
 case 130:
  break;

 case 128:
  status = connector_status_connected;

  if (port->port_num >= 8 && !port->cached_edid) {
   port->cached_edid = drm_get_edid(connector, &port->aux.ddc);
  }
  break;
 case 131:
  if (port->ldps)
   status = connector_status_connected;
  break;
 }
out:
 drm_dp_mst_topology_put_port(port);
 return status;
}
