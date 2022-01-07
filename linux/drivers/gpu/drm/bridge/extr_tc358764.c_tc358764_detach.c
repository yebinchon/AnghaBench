
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc358764 {int connector; int * panel; } ;
struct drm_device {int fb_helper; } ;
struct drm_bridge {struct drm_device* dev; } ;


 struct tc358764* bridge_to_tc358764 (struct drm_bridge*) ;
 int drm_connector_put (int *) ;
 int drm_connector_unregister (int *) ;
 int drm_fb_helper_remove_one_connector (int ,int *) ;
 int drm_panel_detach (int *) ;

__attribute__((used)) static void tc358764_detach(struct drm_bridge *bridge)
{
 struct tc358764 *ctx = bridge_to_tc358764(bridge);
 struct drm_device *drm = bridge->dev;

 drm_connector_unregister(&ctx->connector);
 drm_fb_helper_remove_one_connector(drm->fb_helper, &ctx->connector);
 drm_panel_detach(ctx->panel);
 ctx->panel = ((void*)0);
 drm_connector_put(&ctx->connector);
}
