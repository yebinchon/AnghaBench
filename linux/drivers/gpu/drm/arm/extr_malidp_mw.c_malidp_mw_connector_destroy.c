
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector {int dummy; } ;


 int drm_connector_cleanup (struct drm_connector*) ;

__attribute__((used)) static void malidp_mw_connector_destroy(struct drm_connector *connector)
{
 drm_connector_cleanup(connector);
}
