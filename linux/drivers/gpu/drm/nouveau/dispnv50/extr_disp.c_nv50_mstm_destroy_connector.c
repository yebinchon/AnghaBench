
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nv50_mstc {int connector; } ;
struct nouveau_drm {TYPE_1__* fbcon; } ;
struct drm_dp_mst_topology_mgr {int dummy; } ;
struct drm_connector {int dev; } ;
struct TYPE_2__ {int helper; } ;


 int drm_connector_put (int *) ;
 int drm_connector_unregister (int *) ;
 int drm_fb_helper_remove_one_connector (int *,int *) ;
 struct nouveau_drm* nouveau_drm (int ) ;
 struct nv50_mstc* nv50_mstc (struct drm_connector*) ;

__attribute__((used)) static void
nv50_mstm_destroy_connector(struct drm_dp_mst_topology_mgr *mgr,
       struct drm_connector *connector)
{
 struct nouveau_drm *drm = nouveau_drm(connector->dev);
 struct nv50_mstc *mstc = nv50_mstc(connector);

 drm_connector_unregister(&mstc->connector);

 drm_fb_helper_remove_one_connector(&drm->fbcon->helper, &mstc->connector);

 drm_connector_put(&mstc->connector);
}
