
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dp {int mst_mgr; } ;
struct intel_connector {int port; struct intel_dp* mst_port; } ;
struct edid {int dummy; } ;
struct drm_connector {int dummy; } ;


 scalar_t__ drm_connector_is_unregistered (struct drm_connector*) ;
 struct edid* drm_dp_mst_get_edid (struct drm_connector*,int *,int ) ;
 int intel_connector_update_modes (struct drm_connector*,struct edid*) ;
 int kfree (struct edid*) ;
 struct intel_connector* to_intel_connector (struct drm_connector*) ;

__attribute__((used)) static int intel_dp_mst_get_ddc_modes(struct drm_connector *connector)
{
 struct intel_connector *intel_connector = to_intel_connector(connector);
 struct intel_dp *intel_dp = intel_connector->mst_port;
 struct edid *edid;
 int ret;

 if (drm_connector_is_unregistered(connector))
  return intel_connector_update_modes(connector, ((void*)0));

 edid = drm_dp_mst_get_edid(connector, &intel_dp->mst_mgr, intel_connector->port);
 ret = intel_connector_update_modes(connector, edid);
 kfree(edid);

 return ret;
}
