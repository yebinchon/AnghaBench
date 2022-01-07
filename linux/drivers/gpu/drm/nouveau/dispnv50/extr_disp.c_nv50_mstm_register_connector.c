
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_drm {TYPE_1__* fbcon; } ;
struct drm_connector {int dev; } ;
struct TYPE_2__ {int helper; } ;


 int drm_connector_register (struct drm_connector*) ;
 int drm_fb_helper_add_one_connector (int *,struct drm_connector*) ;
 struct nouveau_drm* nouveau_drm (int ) ;

__attribute__((used)) static void
nv50_mstm_register_connector(struct drm_connector *connector)
{
 struct nouveau_drm *drm = nouveau_drm(connector->dev);

 drm_fb_helper_add_one_connector(&drm->fbcon->helper, connector);

 drm_connector_register(connector);
}
