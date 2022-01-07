
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct edid {int dummy; } ;
struct drm_dp_mst_topology_mgr {int dummy; } ;
struct TYPE_2__ {int ddc; } ;
struct drm_dp_mst_port {int has_audio; TYPE_1__ aux; scalar_t__ cached_edid; } ;
struct drm_connector {int dummy; } ;


 int drm_detect_monitor_audio (struct edid*) ;
 struct drm_dp_mst_port* drm_dp_mst_topology_get_port_validated (struct drm_dp_mst_topology_mgr*,struct drm_dp_mst_port*) ;
 int drm_dp_mst_topology_put_port (struct drm_dp_mst_port*) ;
 struct edid* drm_edid_duplicate (scalar_t__) ;
 struct edid* drm_get_edid (struct drm_connector*,int *) ;

struct edid *drm_dp_mst_get_edid(struct drm_connector *connector, struct drm_dp_mst_topology_mgr *mgr, struct drm_dp_mst_port *port)
{
 struct edid *edid = ((void*)0);


 port = drm_dp_mst_topology_get_port_validated(mgr, port);
 if (!port)
  return ((void*)0);

 if (port->cached_edid)
  edid = drm_edid_duplicate(port->cached_edid);
 else {
  edid = drm_get_edid(connector, &port->aux.ddc);
 }
 port->has_audio = drm_detect_monitor_audio(edid);
 drm_dp_mst_topology_put_port(port);
 return edid;
}
