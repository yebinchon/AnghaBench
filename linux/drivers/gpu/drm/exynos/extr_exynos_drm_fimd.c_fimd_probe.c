
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct resource {int start; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct fimd_context {int suspended; int i80_if; int * encoder; int wait_vsync_event; int wait_vsync_queue; int * regs; int * lcd_clk; int * bus_clk; int * sysreg; int i80ifcon; int vidcon0; int vidout_con; TYPE_1__* driver_data; int vidcon1; struct device* dev; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {scalar_t__ has_vidoutcon; } ;


 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int *) ;
 int LCD_CS_SETUP (int) ;
 int LCD_WR_ACTIVE (int) ;
 int LCD_WR_HOLD (int) ;
 int LCD_WR_SETUP (int) ;
 int PTR_ERR (int *) ;
 int VIDCON0_DSI_EN ;
 int VIDCON0_VIDOUT_I80_LDI0 ;
 int VIDCON1_INV_VCLK ;
 int VIDCON1_INV_VDEN ;
 int VIDOUT_CON_F_I80_LDI0 ;
 int atomic_set (int *,int ) ;
 int component_add (struct device*,int *) ;
 int dev_err (struct device*,char*) ;
 int dev_warn (struct device*,char*) ;
 void* devm_clk_get (struct device*,char*) ;
 int * devm_ioremap_resource (struct device*,struct resource*) ;
 struct fimd_context* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_irq (struct device*,int ,int ,int ,char*,struct fimd_context*) ;
 int * exynos_dpi_probe (struct device*) ;
 int fimd_component_ops ;
 int fimd_irq_handler ;
 int init_waitqueue_head (int *) ;
 TYPE_1__* of_device_get_match_data (struct device*) ;
 struct device_node* of_get_child_by_name (int ,char*) ;
 int of_node_put (struct device_node*) ;
 scalar_t__ of_property_read_bool (int ,char*) ;
 scalar_t__ of_property_read_u32 (struct device_node*,char*,int*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char*) ;
 int platform_set_drvdata (struct platform_device*,struct fimd_context*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_enable (struct device*) ;
 int * syscon_regmap_lookup_by_phandle (int ,char*) ;

__attribute__((used)) static int fimd_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct fimd_context *ctx;
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
 ctx->driver_data = of_device_get_match_data(dev);

 if (of_property_read_bool(dev->of_node, "samsung,invert-vden"))
  ctx->vidcon1 |= VIDCON1_INV_VDEN;
 if (of_property_read_bool(dev->of_node, "samsung,invert-vclk"))
  ctx->vidcon1 |= VIDCON1_INV_VCLK;

 i80_if_timings = of_get_child_by_name(dev->of_node, "i80-if-timings");
 if (i80_if_timings) {
  u32 val;

  ctx->i80_if = 1;

  if (ctx->driver_data->has_vidoutcon)
   ctx->vidout_con |= VIDOUT_CON_F_I80_LDI0;
  else
   ctx->vidcon0 |= VIDCON0_VIDOUT_I80_LDI0;




  ctx->vidcon0 |= VIDCON0_DSI_EN;

  if (of_property_read_u32(i80_if_timings, "cs-setup", &val))
   val = 0;
  ctx->i80ifcon = LCD_CS_SETUP(val);
  if (of_property_read_u32(i80_if_timings, "wr-setup", &val))
   val = 0;
  ctx->i80ifcon |= LCD_WR_SETUP(val);
  if (of_property_read_u32(i80_if_timings, "wr-active", &val))
   val = 1;
  ctx->i80ifcon |= LCD_WR_ACTIVE(val);
  if (of_property_read_u32(i80_if_timings, "wr-hold", &val))
   val = 0;
  ctx->i80ifcon |= LCD_WR_HOLD(val);
 }
 of_node_put(i80_if_timings);

 ctx->sysreg = syscon_regmap_lookup_by_phandle(dev->of_node,
       "samsung,sysreg");
 if (IS_ERR(ctx->sysreg)) {
  dev_warn(dev, "failed to get system register.\n");
  ctx->sysreg = ((void*)0);
 }

 ctx->bus_clk = devm_clk_get(dev, "fimd");
 if (IS_ERR(ctx->bus_clk)) {
  dev_err(dev, "failed to get bus clock\n");
  return PTR_ERR(ctx->bus_clk);
 }

 ctx->lcd_clk = devm_clk_get(dev, "sclk_fimd");
 if (IS_ERR(ctx->lcd_clk)) {
  dev_err(dev, "failed to get lcd clock\n");
  return PTR_ERR(ctx->lcd_clk);
 }

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);

 ctx->regs = devm_ioremap_resource(dev, res);
 if (IS_ERR(ctx->regs))
  return PTR_ERR(ctx->regs);

 res = platform_get_resource_byname(pdev, IORESOURCE_IRQ,
        ctx->i80_if ? "lcd_sys" : "vsync");
 if (!res) {
  dev_err(dev, "irq request failed.\n");
  return -ENXIO;
 }

 ret = devm_request_irq(dev, res->start, fimd_irq_handler,
       0, "drm_fimd", ctx);
 if (ret) {
  dev_err(dev, "irq request failed.\n");
  return ret;
 }

 init_waitqueue_head(&ctx->wait_vsync_queue);
 atomic_set(&ctx->wait_vsync_event, 0);

 platform_set_drvdata(pdev, ctx);

 ctx->encoder = exynos_dpi_probe(dev);
 if (IS_ERR(ctx->encoder))
  return PTR_ERR(ctx->encoder);

 pm_runtime_enable(dev);

 ret = component_add(dev, &fimd_component_ops);
 if (ret)
  goto err_disable_pm_runtime;

 return ret;

err_disable_pm_runtime:
 pm_runtime_disable(dev);

 return ret;
}
