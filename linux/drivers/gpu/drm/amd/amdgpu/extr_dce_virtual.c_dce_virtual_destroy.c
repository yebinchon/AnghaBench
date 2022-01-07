
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector {int dummy; } ;


 int drm_connector_cleanup (struct drm_connector*) ;
 int drm_connector_unregister (struct drm_connector*) ;
 int kfree (struct drm_connector*) ;

__attribute__((used)) static void dce_virtual_destroy(struct drm_connector *connector)
{
 drm_connector_unregister(connector);
 drm_connector_cleanup(connector);
 kfree(connector);
}
