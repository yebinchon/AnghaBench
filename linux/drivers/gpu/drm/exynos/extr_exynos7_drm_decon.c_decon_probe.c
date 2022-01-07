
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;
struct decon_context {int suspended; int i80_if; int regs; void* encoder; int wait_vsync_event; int wait_vsync_queue; void* vclk; void* eclk; void* aclk; void* pclk; struct device* dev; } ;


 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int IORESOURCE_IRQ ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int atomic_set (int *,int ) ;
 int component_add (struct device*,int *) ;
 int decon_component_ops ;
 int decon_irq_handler ;
 int dev_err (struct device*,char*) ;
 void* devm_clk_get (struct device*,char*) ;
 struct decon_context* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_irq (struct device*,int ,int ,int ,char*,struct decon_context*) ;
 void* exynos_dpi_probe (struct device*) ;
 int init_waitqueue_head (int *) ;
 int iounmap (int ) ;
 struct device_node* of_get_child_by_name (int ,char*) ;
 int of_iomap (int ,int ) ;
 int of_node_put (struct device_node*) ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char*) ;
 int platform_set_drvdata (struct platform_device*,struct decon_context*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_enable (struct device*) ;

__attribute__((used)) static int decon_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct decon_context *ctx;
 struct device_node *i80_if_timings;
 struct resource *res;
 int ret;

 if (!dev->of_node)
  return -ENODEV;

 ctx = devm_kzalloc(dev, sizeof(*ctx), GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;

 ctx->dev = dev;
 ctx->suspended = 1;

 i80_if_timings = of_get_child_by_name(dev->of_node, "i80-if-timings");
 if (i80_if_timings)
  ctx->i80_if = 1;
 of_node_put(i80_if_timings);

 ctx->regs = of_iomap(dev->of_node, 0);
 if (!ctx->regs)
  return -ENOMEM;

 ctx->pclk = devm_clk_get(dev, "pclk_decon0");
 if (IS_ERR(ctx->pclk)) {
  dev_err(dev, "failed to get bus clock pclk\n");
  ret = PTR_ERR(ctx->pclk);
  goto err_iounmap;
 }

 ctx->aclk = devm_clk_get(dev, "aclk_decon0");
 if (IS_ERR(ctx->aclk)) {
  dev_err(dev, "failed to get bus clock aclk\n");
  ret = PTR_ERR(ctx->aclk);
  goto err_iounmap;
 }

 ctx->eclk = devm_clk_get(dev, "decon0_eclk");
 if (IS_ERR(ctx->eclk)) {
  dev_err(dev, "failed to get eclock\n");
  ret = PTR_ERR(ctx->eclk);
  goto err_iounmap;
 }

 ctx->vclk = devm_clk_get(dev, "decon0_vclk");
 if (IS_ERR(ctx->vclk)) {
  dev_err(dev, "failed to get vclock\n");
  ret = PTR_ERR(ctx->vclk);
  goto err_iounmap;
 }

 res = platform_get_resource_byname(pdev, IORESOURCE_IRQ,
        ctx->i80_if ? "lcd_sys" : "vsync");
 if (!res) {
  dev_err(dev, "irq request failed.\n");
  ret = -ENXIO;
  goto err_iounmap;
 }

 ret = devm_request_irq(dev, res->start, decon_irq_handler,
       0, "drm_decon", ctx);
 if (ret) {
  dev_err(dev, "irq request failed.\n");
  goto err_iounmap;
 }

 init_waitqueue_head(&ctx->wait_vsync_queue);
 atomic_set(&ctx->wait_vsync_event, 0);

 platform_set_drvdata(pdev, ctx);

 ctx->encoder = exynos_dpi_probe(dev);
 if (IS_ERR(ctx->encoder)) {
  ret = PTR_ERR(ctx->encoder);
  goto err_iounmap;
 }

 pm_runtime_enable(dev);

 ret = component_add(dev, &decon_component_ops);
 if (ret)
  goto err_disable_pm_runtime;

 return ret;

err_disable_pm_runtime:
 pm_runtime_disable(dev);

err_iounmap:
 iounmap(ctx->regs);

 return ret;
}
