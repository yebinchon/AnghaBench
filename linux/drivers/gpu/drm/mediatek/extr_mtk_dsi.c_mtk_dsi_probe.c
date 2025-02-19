
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {struct device* dev; int * ops; } ;
struct mtk_dsi {int irq_wait_queue; int ddp_comp; void* phy; void* regs; void* hs_clk; void* digital_clk; void* engine_clk; int bridge; int panel; TYPE_1__ host; } ;


 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int IRQF_TRIGGER_LOW ;
 int IRQ_TYPE_LEVEL_LOW ;
 scalar_t__ IS_ERR (void*) ;
 int MTK_DSI ;
 int PTR_ERR (void*) ;
 int component_add (struct device*,int *) ;
 int dev_err (struct device*,char*,...) ;
 int dev_name (struct device*) ;
 void* devm_clk_get (struct device*,char*) ;
 void* devm_ioremap_resource (struct device*,struct resource*) ;
 struct mtk_dsi* devm_kzalloc (struct device*,int,int ) ;
 void* devm_phy_get (struct device*,char*) ;
 int devm_request_irq (struct device*,int,int ,int ,int ,struct mtk_dsi*) ;
 int drm_of_find_panel_or_bridge (int ,int ,int ,int *,int *) ;
 int init_waitqueue_head (int *) ;
 int irq_set_status_flags (int,int ) ;
 int mtk_ddp_comp_get_id (int ,int ) ;
 int mtk_ddp_comp_init (struct device*,int ,int *,int,int *) ;
 int mtk_dsi_component_ops ;
 int mtk_dsi_funcs ;
 int mtk_dsi_irq ;
 int mtk_dsi_ops ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct mtk_dsi*) ;

__attribute__((used)) static int mtk_dsi_probe(struct platform_device *pdev)
{
 struct mtk_dsi *dsi;
 struct device *dev = &pdev->dev;
 struct resource *regs;
 int irq_num;
 int comp_id;
 int ret;

 dsi = devm_kzalloc(dev, sizeof(*dsi), GFP_KERNEL);
 if (!dsi)
  return -ENOMEM;

 dsi->host.ops = &mtk_dsi_ops;
 dsi->host.dev = dev;

 ret = drm_of_find_panel_or_bridge(dev->of_node, 0, 0,
       &dsi->panel, &dsi->bridge);
 if (ret)
  return ret;

 dsi->engine_clk = devm_clk_get(dev, "engine");
 if (IS_ERR(dsi->engine_clk)) {
  ret = PTR_ERR(dsi->engine_clk);
  dev_err(dev, "Failed to get engine clock: %d\n", ret);
  return ret;
 }

 dsi->digital_clk = devm_clk_get(dev, "digital");
 if (IS_ERR(dsi->digital_clk)) {
  ret = PTR_ERR(dsi->digital_clk);
  dev_err(dev, "Failed to get digital clock: %d\n", ret);
  return ret;
 }

 dsi->hs_clk = devm_clk_get(dev, "hs");
 if (IS_ERR(dsi->hs_clk)) {
  ret = PTR_ERR(dsi->hs_clk);
  dev_err(dev, "Failed to get hs clock: %d\n", ret);
  return ret;
 }

 regs = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 dsi->regs = devm_ioremap_resource(dev, regs);
 if (IS_ERR(dsi->regs)) {
  ret = PTR_ERR(dsi->regs);
  dev_err(dev, "Failed to ioremap memory: %d\n", ret);
  return ret;
 }

 dsi->phy = devm_phy_get(dev, "dphy");
 if (IS_ERR(dsi->phy)) {
  ret = PTR_ERR(dsi->phy);
  dev_err(dev, "Failed to get MIPI-DPHY: %d\n", ret);
  return ret;
 }

 comp_id = mtk_ddp_comp_get_id(dev->of_node, MTK_DSI);
 if (comp_id < 0) {
  dev_err(dev, "Failed to identify by alias: %d\n", comp_id);
  return comp_id;
 }

 ret = mtk_ddp_comp_init(dev, dev->of_node, &dsi->ddp_comp, comp_id,
    &mtk_dsi_funcs);
 if (ret) {
  dev_err(dev, "Failed to initialize component: %d\n", ret);
  return ret;
 }

 irq_num = platform_get_irq(pdev, 0);
 if (irq_num < 0) {
  dev_err(&pdev->dev, "failed to request dsi irq resource\n");
  return -EPROBE_DEFER;
 }

 irq_set_status_flags(irq_num, IRQ_TYPE_LEVEL_LOW);
 ret = devm_request_irq(&pdev->dev, irq_num, mtk_dsi_irq,
          IRQF_TRIGGER_LOW, dev_name(&pdev->dev), dsi);
 if (ret) {
  dev_err(&pdev->dev, "failed to request mediatek dsi irq\n");
  return -EPROBE_DEFER;
 }

 init_waitqueue_head(&dsi->irq_wait_queue);

 platform_set_drvdata(pdev, dsi);

 return component_add(&pdev->dev, &mtk_dsi_component_ops);
}
