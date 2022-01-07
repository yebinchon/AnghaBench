
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc358764 {int panel; struct device* dev; int gpio_reset; } ;
struct device {int of_node; } ;


 int EPROBE_DEFER ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*,...) ;
 int devm_gpiod_get (struct device*,char*,int ) ;
 int drm_of_find_panel_or_bridge (int ,int,int ,int *,int *) ;

__attribute__((used)) static int tc358764_parse_dt(struct tc358764 *ctx)
{
 struct device *dev = ctx->dev;
 int ret;

 ctx->gpio_reset = devm_gpiod_get(dev, "reset", GPIOD_OUT_LOW);
 if (IS_ERR(ctx->gpio_reset)) {
  dev_err(dev, "no reset GPIO pin provided\n");
  return PTR_ERR(ctx->gpio_reset);
 }

 ret = drm_of_find_panel_or_bridge(ctx->dev->of_node, 1, 0, &ctx->panel,
       ((void*)0));
 if (ret && ret != -EPROBE_DEFER)
  dev_err(dev, "cannot find panel (%d)\n", ret);

 return ret;
}
