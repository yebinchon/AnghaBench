
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct mtk_dpi_conf {int dummy; } ;
struct mtk_dpi {int irq; int ddp_comp; TYPE_1__* bridge; void* tvd_clk; void* pixel_clk; void* engine_clk; void* regs; struct mtk_dpi_conf* conf; struct device* dev; } ;
struct TYPE_2__ {int of_node; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (void*) ;
 int MTK_DPI ;
 int PTR_ERR (void*) ;
 int component_add (struct device*,int *) ;
 int dev_err (struct device*,char*,int) ;
 int dev_info (struct device*,char*,int ) ;
 void* devm_clk_get (struct device*,char*) ;
 void* devm_ioremap_resource (struct device*,struct resource*) ;
 struct mtk_dpi* devm_kzalloc (struct device*,int,int ) ;
 int drm_of_find_panel_or_bridge (int ,int ,int ,int *,TYPE_1__**) ;
 int mtk_ddp_comp_get_id (int ,int ) ;
 int mtk_ddp_comp_init (struct device*,int ,int *,int,int *) ;
 int mtk_dpi_component_ops ;
 int mtk_dpi_funcs ;
 scalar_t__ of_device_get_match_data (struct device*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct mtk_dpi*) ;

__attribute__((used)) static int mtk_dpi_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct mtk_dpi *dpi;
 struct resource *mem;
 int comp_id;
 int ret;

 dpi = devm_kzalloc(dev, sizeof(*dpi), GFP_KERNEL);
 if (!dpi)
  return -ENOMEM;

 dpi->dev = dev;
 dpi->conf = (struct mtk_dpi_conf *)of_device_get_match_data(dev);

 mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 dpi->regs = devm_ioremap_resource(dev, mem);
 if (IS_ERR(dpi->regs)) {
  ret = PTR_ERR(dpi->regs);
  dev_err(dev, "Failed to ioremap mem resource: %d\n", ret);
  return ret;
 }

 dpi->engine_clk = devm_clk_get(dev, "engine");
 if (IS_ERR(dpi->engine_clk)) {
  ret = PTR_ERR(dpi->engine_clk);
  dev_err(dev, "Failed to get engine clock: %d\n", ret);
  return ret;
 }

 dpi->pixel_clk = devm_clk_get(dev, "pixel");
 if (IS_ERR(dpi->pixel_clk)) {
  ret = PTR_ERR(dpi->pixel_clk);
  dev_err(dev, "Failed to get pixel clock: %d\n", ret);
  return ret;
 }

 dpi->tvd_clk = devm_clk_get(dev, "pll");
 if (IS_ERR(dpi->tvd_clk)) {
  ret = PTR_ERR(dpi->tvd_clk);
  dev_err(dev, "Failed to get tvdpll clock: %d\n", ret);
  return ret;
 }

 dpi->irq = platform_get_irq(pdev, 0);
 if (dpi->irq <= 0) {
  dev_err(dev, "Failed to get irq: %d\n", dpi->irq);
  return -EINVAL;
 }

 ret = drm_of_find_panel_or_bridge(dev->of_node, 0, 0,
       ((void*)0), &dpi->bridge);
 if (ret)
  return ret;

 dev_info(dev, "Found bridge node: %pOF\n", dpi->bridge->of_node);

 comp_id = mtk_ddp_comp_get_id(dev->of_node, MTK_DPI);
 if (comp_id < 0) {
  dev_err(dev, "Failed to identify by alias: %d\n", comp_id);
  return comp_id;
 }

 ret = mtk_ddp_comp_init(dev, dev->of_node, &dpi->ddp_comp, comp_id,
    &mtk_dpi_funcs);
 if (ret) {
  dev_err(dev, "Failed to initialize component: %d\n", ret);
  return ret;
 }

 platform_set_drvdata(pdev, dpi);

 ret = component_add(dev, &mtk_dpi_component_ops);
 if (ret) {
  dev_err(dev, "Failed to add component: %d\n", ret);
  return ret;
 }

 return 0;
}
