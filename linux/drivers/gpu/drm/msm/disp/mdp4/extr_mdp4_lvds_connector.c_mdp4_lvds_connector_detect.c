
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdp4_lvds_connector {int * panel; int panel_node; } ;
struct drm_connector {int dummy; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;


 scalar_t__ IS_ERR (int *) ;
 int connector_status_connected ;
 int connector_status_disconnected ;
 int * of_drm_find_panel (int ) ;
 struct mdp4_lvds_connector* to_mdp4_lvds_connector (struct drm_connector*) ;

__attribute__((used)) static enum drm_connector_status mdp4_lvds_connector_detect(
  struct drm_connector *connector, bool force)
{
 struct mdp4_lvds_connector *mdp4_lvds_connector =
   to_mdp4_lvds_connector(connector);

 if (!mdp4_lvds_connector->panel) {
  mdp4_lvds_connector->panel =
   of_drm_find_panel(mdp4_lvds_connector->panel_node);
  if (IS_ERR(mdp4_lvds_connector->panel))
   mdp4_lvds_connector->panel = ((void*)0);
 }

 return mdp4_lvds_connector->panel ?
   connector_status_connected :
   connector_status_disconnected;
}
