
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rockchip_lvds {int pclk; int grf; TYPE_1__* pins; struct device* dev; int regs; int soc_data; } ;
struct resource {int dummy; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct of_device_id {int data; } ;
struct TYPE_2__ {int default_state; int p; } ;


 int DRM_DEV_ERROR (struct device*,char*) ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_prepare (int ) ;
 int clk_unprepare (int ) ;
 int component_add (struct device*,int *) ;
 int dev_set_drvdata (struct device*,struct rockchip_lvds*) ;
 int devm_clk_get (struct device*,char*) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 int devm_kfree (struct device*,TYPE_1__*) ;
 void* devm_kzalloc (struct device*,int,int ) ;
 int devm_pinctrl_get (struct device*) ;
 struct of_device_id* of_match_node (int ,int ) ;
 int pinctrl_lookup_state (int ,char*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int rockchip_lvds_component_ops ;
 int rockchip_lvds_dt_ids ;
 int syscon_regmap_lookup_by_phandle (int ,char*) ;

__attribute__((used)) static int rockchip_lvds_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct rockchip_lvds *lvds;
 const struct of_device_id *match;
 struct resource *res;
 int ret;

 if (!dev->of_node)
  return -ENODEV;

 lvds = devm_kzalloc(&pdev->dev, sizeof(*lvds), GFP_KERNEL);
 if (!lvds)
  return -ENOMEM;

 lvds->dev = dev;
 match = of_match_node(rockchip_lvds_dt_ids, dev->of_node);
 if (!match)
  return -ENODEV;
 lvds->soc_data = match->data;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 lvds->regs = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(lvds->regs))
  return PTR_ERR(lvds->regs);

 lvds->pclk = devm_clk_get(&pdev->dev, "pclk_lvds");
 if (IS_ERR(lvds->pclk)) {
  DRM_DEV_ERROR(dev, "could not get pclk_lvds\n");
  return PTR_ERR(lvds->pclk);
 }

 lvds->pins = devm_kzalloc(lvds->dev, sizeof(*lvds->pins),
      GFP_KERNEL);
 if (!lvds->pins)
  return -ENOMEM;

 lvds->pins->p = devm_pinctrl_get(lvds->dev);
 if (IS_ERR(lvds->pins->p)) {
  DRM_DEV_ERROR(dev, "no pinctrl handle\n");
  devm_kfree(lvds->dev, lvds->pins);
  lvds->pins = ((void*)0);
 } else {
  lvds->pins->default_state =
   pinctrl_lookup_state(lvds->pins->p, "lcdc");
  if (IS_ERR(lvds->pins->default_state)) {
   DRM_DEV_ERROR(dev, "no default pinctrl state\n");
   devm_kfree(lvds->dev, lvds->pins);
   lvds->pins = ((void*)0);
  }
 }

 lvds->grf = syscon_regmap_lookup_by_phandle(dev->of_node,
          "rockchip,grf");
 if (IS_ERR(lvds->grf)) {
  DRM_DEV_ERROR(dev, "missing rockchip,grf property\n");
  return PTR_ERR(lvds->grf);
 }

 dev_set_drvdata(dev, lvds);

 ret = clk_prepare(lvds->pclk);
 if (ret < 0) {
  DRM_DEV_ERROR(dev, "failed to prepare pclk_lvds\n");
  return ret;
 }
 ret = component_add(&pdev->dev, &rockchip_lvds_component_ops);
 if (ret < 0) {
  DRM_DEV_ERROR(dev, "failed to add component\n");
  clk_unprepare(lvds->pclk);
 }

 return ret;
}
