
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct decon_context {unsigned long out_type; int first_win; int irq_vsync; int irq_lcd_sys; int te_irq; struct clk* sysreg; struct clk* addr; struct clk** clks; struct device* dev; int vblank_lock; } ;
struct clk {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I80_HW_TRG ;
 int IFTYPE_HDMI ;
 int IORESOURCE_MEM ;
 int IRQF_TRIGGER_RISING ;
 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 int component_add (struct device*,int *) ;
 int * decon_clks_name ;
 int decon_component_ops ;
 int decon_conf_irq (struct decon_context*,char*,int ,int ) ;
 int decon_irq_handler ;
 int decon_te_irq_handler ;
 int dev_err (struct device*,char*) ;
 struct clk* devm_clk_get (struct device*,int ) ;
 struct clk* devm_ioremap_resource (struct device*,struct resource*) ;
 struct decon_context* devm_kzalloc (struct device*,int,int ) ;
 scalar_t__ of_device_get_match_data (struct device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct decon_context*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_enable (struct device*) ;
 int spin_lock_init (int *) ;
 struct clk* syscon_regmap_lookup_by_phandle (int ,char*) ;

__attribute__((used)) static int exynos5433_decon_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct decon_context *ctx;
 struct resource *res;
 int ret;
 int i;

 ctx = devm_kzalloc(dev, sizeof(*ctx), GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;

 ctx->dev = dev;
 ctx->out_type = (unsigned long)of_device_get_match_data(dev);
 spin_lock_init(&ctx->vblank_lock);

 if (ctx->out_type & IFTYPE_HDMI)
  ctx->first_win = 1;

 for (i = 0; i < ARRAY_SIZE(decon_clks_name); i++) {
  struct clk *clk;

  clk = devm_clk_get(ctx->dev, decon_clks_name[i]);
  if (IS_ERR(clk))
   return PTR_ERR(clk);

  ctx->clks[i] = clk;
 }

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 ctx->addr = devm_ioremap_resource(dev, res);
 if (IS_ERR(ctx->addr)) {
  dev_err(dev, "ioremap failed\n");
  return PTR_ERR(ctx->addr);
 }

 ret = decon_conf_irq(ctx, "vsync", decon_irq_handler, 0);
 if (ret < 0)
  return ret;
 ctx->irq_vsync = ret;

 ret = decon_conf_irq(ctx, "lcd_sys", decon_irq_handler, 0);
 if (ret < 0)
  return ret;
 ctx->irq_lcd_sys = ret;

 ret = decon_conf_irq(ctx, "te", decon_te_irq_handler,
   IRQF_TRIGGER_RISING);
 if (ret < 0)
   return ret;
 if (ret) {
  ctx->te_irq = ret;
  ctx->out_type &= ~I80_HW_TRG;
 }

 if (ctx->out_type & I80_HW_TRG) {
  ctx->sysreg = syscon_regmap_lookup_by_phandle(dev->of_node,
       "samsung,disp-sysreg");
  if (IS_ERR(ctx->sysreg)) {
   dev_err(dev, "failed to get system register\n");
   return PTR_ERR(ctx->sysreg);
  }
 }

 platform_set_drvdata(pdev, ctx);

 pm_runtime_enable(dev);

 ret = component_add(dev, &decon_component_ops);
 if (ret)
  goto err_disable_pm_runtime;

 return 0;

err_disable_pm_runtime:
 pm_runtime_disable(dev);

 return ret;
}
