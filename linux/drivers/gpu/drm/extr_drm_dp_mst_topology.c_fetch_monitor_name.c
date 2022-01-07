
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edid {int dummy; } ;
struct drm_dp_mst_topology_mgr {int dummy; } ;
struct drm_dp_mst_port {int connector; } ;


 struct edid* drm_dp_mst_get_edid (int ,struct drm_dp_mst_topology_mgr*,struct drm_dp_mst_port*) ;
 int drm_edid_get_monitor_name (struct edid*,char*,int) ;

__attribute__((used)) static void fetch_monitor_name(struct drm_dp_mst_topology_mgr *mgr,
          struct drm_dp_mst_port *port, char *name,
          int namelen)
{
 struct edid *mst_edid;

 mst_edid = drm_dp_mst_get_edid(port->connector, mgr, port);
 drm_edid_get_monitor_name(mst_edid, name, namelen);
}
