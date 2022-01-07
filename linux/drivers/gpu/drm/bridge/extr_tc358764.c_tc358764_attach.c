
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* funcs; int polled; } ;
struct tc358764 {TYPE_2__ connector; int panel; } ;
struct drm_device {int fb_helper; } ;
struct drm_bridge {int encoder; struct drm_device* dev; } ;
struct TYPE_9__ {int (* reset ) (TYPE_2__*) ;} ;


 int DRM_CONNECTOR_POLL_HPD ;
 int DRM_ERROR (char*) ;
 int DRM_MODE_CONNECTOR_LVDS ;
 struct tc358764* bridge_to_tc358764 (struct drm_bridge*) ;
 int drm_connector_attach_encoder (TYPE_2__*,int ) ;
 int drm_connector_helper_add (TYPE_2__*,int *) ;
 int drm_connector_init (struct drm_device*,TYPE_2__*,int *,int ) ;
 int drm_connector_register (TYPE_2__*) ;
 int drm_fb_helper_add_one_connector (int ,TYPE_2__*) ;
 int drm_panel_attach (int ,TYPE_2__*) ;
 int stub1 (TYPE_2__*) ;
 int tc358764_connector_funcs ;
 int tc358764_connector_helper_funcs ;

__attribute__((used)) static int tc358764_attach(struct drm_bridge *bridge)
{
 struct tc358764 *ctx = bridge_to_tc358764(bridge);
 struct drm_device *drm = bridge->dev;
 int ret;

 ctx->connector.polled = DRM_CONNECTOR_POLL_HPD;
 ret = drm_connector_init(drm, &ctx->connector,
     &tc358764_connector_funcs,
     DRM_MODE_CONNECTOR_LVDS);
 if (ret) {
  DRM_ERROR("Failed to initialize connector\n");
  return ret;
 }

 drm_connector_helper_add(&ctx->connector,
     &tc358764_connector_helper_funcs);
 drm_connector_attach_encoder(&ctx->connector, bridge->encoder);
 drm_panel_attach(ctx->panel, &ctx->connector);
 ctx->connector.funcs->reset(&ctx->connector);
 drm_fb_helper_add_one_connector(drm->fb_helper, &ctx->connector);
 drm_connector_register(&ctx->connector);

 return 0;
}
