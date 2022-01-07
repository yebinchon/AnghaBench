
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_connector {scalar_t__ port; int panel; struct drm_connector* edid; struct drm_connector* detect_edid; } ;
struct drm_connector {int dummy; } ;


 int IS_ERR_OR_NULL (struct drm_connector*) ;
 int drm_connector_cleanup (struct drm_connector*) ;
 int drm_dp_mst_put_port_malloc (scalar_t__) ;
 int intel_hdcp_cleanup (struct intel_connector*) ;
 int intel_panel_fini (int *) ;
 int kfree (struct drm_connector*) ;
 struct intel_connector* to_intel_connector (struct drm_connector*) ;

void intel_connector_destroy(struct drm_connector *connector)
{
 struct intel_connector *intel_connector = to_intel_connector(connector);

 kfree(intel_connector->detect_edid);

 intel_hdcp_cleanup(intel_connector);

 if (!IS_ERR_OR_NULL(intel_connector->edid))
  kfree(intel_connector->edid);

 intel_panel_fini(&intel_connector->panel);

 drm_connector_cleanup(connector);

 if (intel_connector->port)
  drm_dp_mst_put_port_malloc(intel_connector->port);

 kfree(connector);
}
