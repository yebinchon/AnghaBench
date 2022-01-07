
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct drm_connector* name; scalar_t__ transfer; } ;
struct nouveau_connector {TYPE_1__ aux; struct drm_connector* edid; int hpd; } ;
struct drm_connector {int dummy; } ;


 int drm_connector_cleanup (struct drm_connector*) ;
 int drm_connector_unregister (struct drm_connector*) ;
 int drm_dp_aux_unregister (TYPE_1__*) ;
 int drm_dp_cec_unregister_connector (TYPE_1__*) ;
 int kfree (struct drm_connector*) ;
 struct nouveau_connector* nouveau_connector (struct drm_connector*) ;
 int nvif_notify_fini (int *) ;

__attribute__((used)) static void
nouveau_connector_destroy(struct drm_connector *connector)
{
 struct nouveau_connector *nv_connector = nouveau_connector(connector);
 nvif_notify_fini(&nv_connector->hpd);
 kfree(nv_connector->edid);
 drm_connector_unregister(connector);
 drm_connector_cleanup(connector);
 if (nv_connector->aux.transfer) {
  drm_dp_cec_unregister_connector(&nv_connector->aux);
  drm_dp_aux_unregister(&nv_connector->aux);
  kfree(nv_connector->aux.name);
 }
 kfree(connector);
}
