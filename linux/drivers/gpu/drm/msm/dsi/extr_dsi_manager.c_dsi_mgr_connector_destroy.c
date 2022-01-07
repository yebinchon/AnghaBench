
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsi_connector {int dummy; } ;
struct drm_connector {int dummy; } ;


 int DBG (char*) ;
 int drm_connector_cleanup (struct drm_connector*) ;
 int kfree (struct dsi_connector*) ;
 struct dsi_connector* to_dsi_connector (struct drm_connector*) ;

__attribute__((used)) static void dsi_mgr_connector_destroy(struct drm_connector *connector)
{
 struct dsi_connector *dsi_connector = to_dsi_connector(connector);

 DBG("");

 drm_connector_cleanup(connector);

 kfree(dsi_connector);
}
