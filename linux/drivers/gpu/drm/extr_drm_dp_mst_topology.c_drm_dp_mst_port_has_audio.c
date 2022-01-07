
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_dp_mst_topology_mgr {int dummy; } ;
struct drm_dp_mst_port {int has_audio; } ;


 struct drm_dp_mst_port* drm_dp_mst_topology_get_port_validated (struct drm_dp_mst_topology_mgr*,struct drm_dp_mst_port*) ;
 int drm_dp_mst_topology_put_port (struct drm_dp_mst_port*) ;

bool drm_dp_mst_port_has_audio(struct drm_dp_mst_topology_mgr *mgr,
     struct drm_dp_mst_port *port)
{
 bool ret = 0;

 port = drm_dp_mst_topology_get_port_validated(mgr, port);
 if (!port)
  return ret;
 ret = port->has_audio;
 drm_dp_mst_topology_put_port(port);
 return ret;
}
