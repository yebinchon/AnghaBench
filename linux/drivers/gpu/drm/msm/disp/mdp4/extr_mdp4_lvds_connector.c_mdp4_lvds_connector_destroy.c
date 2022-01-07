
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdp4_lvds_connector {int dummy; } ;
struct drm_connector {int dummy; } ;


 int drm_connector_cleanup (struct drm_connector*) ;
 int kfree (struct mdp4_lvds_connector*) ;
 struct mdp4_lvds_connector* to_mdp4_lvds_connector (struct drm_connector*) ;

__attribute__((used)) static void mdp4_lvds_connector_destroy(struct drm_connector *connector)
{
 struct mdp4_lvds_connector *mdp4_lvds_connector =
   to_mdp4_lvds_connector(connector);

 drm_connector_cleanup(connector);

 kfree(mdp4_lvds_connector);
}
