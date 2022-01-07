
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct resource {int dummy; } ;
struct TYPE_3__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct dw_dsi {int bridge; struct dsi_hw_ctx* ctx; } ;
struct dsi_hw_ctx {int base; int pclk; } ;
struct device_node {int dummy; } ;


 int DRM_ERROR (char*) ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int devm_clk_get (TYPE_1__*,char*) ;
 int devm_ioremap_resource (TYPE_1__*,struct resource*) ;
 int drm_of_find_panel_or_bridge (struct device_node*,int,int ,int *,int *) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;

__attribute__((used)) static int dsi_parse_dt(struct platform_device *pdev, struct dw_dsi *dsi)
{
 struct dsi_hw_ctx *ctx = dsi->ctx;
 struct device_node *np = pdev->dev.of_node;
 struct resource *res;
 int ret;





 ret = drm_of_find_panel_or_bridge(np, 1, 0, ((void*)0), &dsi->bridge);
 if (ret)
  return ret;

 ctx->pclk = devm_clk_get(&pdev->dev, "pclk");
 if (IS_ERR(ctx->pclk)) {
  DRM_ERROR("failed to get pclk clock\n");
  return PTR_ERR(ctx->pclk);
 }

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 ctx->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(ctx->base)) {
  DRM_ERROR("failed to remap dsi io region\n");
  return PTR_ERR(ctx->base);
 }

 return 0;
}
