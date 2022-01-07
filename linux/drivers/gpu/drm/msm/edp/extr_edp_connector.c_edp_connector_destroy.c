
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edp_connector {int dummy; } ;
struct drm_connector {int dummy; } ;


 int DBG (char*) ;
 int drm_connector_cleanup (struct drm_connector*) ;
 int kfree (struct edp_connector*) ;
 struct edp_connector* to_edp_connector (struct drm_connector*) ;

__attribute__((used)) static void edp_connector_destroy(struct drm_connector *connector)
{
 struct edp_connector *edp_connector = to_edp_connector(connector);

 DBG("");

 drm_connector_cleanup(connector);

 kfree(edp_connector);
}
