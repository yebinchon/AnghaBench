
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc358764 {int dev; int supplies; int panel; } ;
struct drm_bridge {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 struct tc358764* bridge_to_tc358764 (struct drm_bridge*) ;
 int dev_err (int ,char*,int) ;
 int drm_panel_unprepare (int ) ;
 int regulator_bulk_disable (int ,int ) ;
 int tc358764_reset (struct tc358764*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void tc358764_post_disable(struct drm_bridge *bridge)
{
 struct tc358764 *ctx = bridge_to_tc358764(bridge);
 int ret;

 ret = drm_panel_unprepare(ctx->panel);
 if (ret < 0)
  dev_err(ctx->dev, "error unpreparing panel (%d)\n", ret);
 tc358764_reset(ctx);
 usleep_range(10000, 15000);
 ret = regulator_bulk_disable(ARRAY_SIZE(ctx->supplies), ctx->supplies);
 if (ret < 0)
  dev_err(ctx->dev, "error disabling regulators (%d)\n", ret);
}
