
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdfld_dsi_pkg_sender {int dummy; } ;
struct mdfld_dsi_connector {struct mdfld_dsi_pkg_sender* pkg_sender; } ;
struct drm_connector {int dummy; } ;


 int drm_connector_cleanup (struct drm_connector*) ;
 int drm_connector_unregister (struct drm_connector*) ;
 int kfree (struct mdfld_dsi_connector*) ;
 struct mdfld_dsi_connector* mdfld_dsi_connector (struct drm_connector*) ;
 int mdfld_dsi_pkg_sender_destroy (struct mdfld_dsi_pkg_sender*) ;

__attribute__((used)) static void mdfld_dsi_connector_destroy(struct drm_connector *connector)
{
 struct mdfld_dsi_connector *dsi_connector =
     mdfld_dsi_connector(connector);
 struct mdfld_dsi_pkg_sender *sender;

 if (!dsi_connector)
  return;
 drm_connector_unregister(connector);
 drm_connector_cleanup(connector);
 sender = dsi_connector->pkg_sender;
 mdfld_dsi_pkg_sender_destroy(sender);
 kfree(dsi_connector);
}
