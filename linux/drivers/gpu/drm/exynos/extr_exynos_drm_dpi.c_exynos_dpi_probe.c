
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int dummy; } ;
struct exynos_dpi {struct drm_encoder encoder; int panel; scalar_t__ panel_node; struct device* dev; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 struct drm_encoder* ERR_CAST (int ) ;
 struct drm_encoder* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int devm_kfree (struct device*,struct exynos_dpi*) ;
 struct exynos_dpi* devm_kzalloc (struct device*,int,int ) ;
 int exynos_dpi_parse_dt (struct exynos_dpi*) ;
 int of_drm_find_panel (scalar_t__) ;

struct drm_encoder *exynos_dpi_probe(struct device *dev)
{
 struct exynos_dpi *ctx;
 int ret;

 ctx = devm_kzalloc(dev, sizeof(*ctx), GFP_KERNEL);
 if (!ctx)
  return ERR_PTR(-ENOMEM);

 ctx->dev = dev;

 ret = exynos_dpi_parse_dt(ctx);
 if (ret < 0) {
  devm_kfree(dev, ctx);
  return ((void*)0);
 }

 if (ctx->panel_node) {
  ctx->panel = of_drm_find_panel(ctx->panel_node);
  if (IS_ERR(ctx->panel))
   return ERR_CAST(ctx->panel);
 }

 return &ctx->encoder;
}
