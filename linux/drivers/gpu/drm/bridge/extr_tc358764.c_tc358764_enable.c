
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc358764 {int dev; int panel; } ;
struct drm_bridge {int dummy; } ;


 struct tc358764* bridge_to_tc358764 (struct drm_bridge*) ;
 int dev_err (int ,char*,int) ;
 int drm_panel_enable (int ) ;

__attribute__((used)) static void tc358764_enable(struct drm_bridge *bridge)
{
 struct tc358764 *ctx = bridge_to_tc358764(bridge);
 int ret = drm_panel_enable(ctx->panel);

 if (ret < 0)
  dev_err(ctx->dev, "error enabling panel (%d)\n", ret);
}
