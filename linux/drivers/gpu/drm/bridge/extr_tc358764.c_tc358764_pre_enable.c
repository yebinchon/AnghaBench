
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc358764 {int dev; int panel; int supplies; } ;
struct drm_bridge {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 struct tc358764* bridge_to_tc358764 (struct drm_bridge*) ;
 int dev_err (int ,char*,int) ;
 int drm_panel_prepare (int ) ;
 int regulator_bulk_enable (int ,int ) ;
 int tc358764_init (struct tc358764*) ;
 int tc358764_reset (struct tc358764*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void tc358764_pre_enable(struct drm_bridge *bridge)
{
 struct tc358764 *ctx = bridge_to_tc358764(bridge);
 int ret;

 ret = regulator_bulk_enable(ARRAY_SIZE(ctx->supplies), ctx->supplies);
 if (ret < 0)
  dev_err(ctx->dev, "error enabling regulators (%d)\n", ret);
 usleep_range(10000, 15000);
 tc358764_reset(ctx);
 ret = tc358764_init(ctx);
 if (ret < 0)
  dev_err(ctx->dev, "error initializing bridge (%d)\n", ret);
 ret = drm_panel_prepare(ctx->panel);
 if (ret < 0)
  dev_err(ctx->dev, "error preparing panel (%d)\n", ret);
}
