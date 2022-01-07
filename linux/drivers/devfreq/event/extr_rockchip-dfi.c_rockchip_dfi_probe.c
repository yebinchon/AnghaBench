
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_dfi {int edev; struct devfreq_event_desc* desc; struct device* dev; int regmap_pmu; int clk; int regs; } ;
struct resource {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int name; } ;
struct devfreq_event_desc {int name; struct rockchip_dfi* driver_data; int * ops; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*) ;
 int devm_clk_get (struct device*,char*) ;
 int devm_devfreq_event_add_edev (struct device*,struct devfreq_event_desc*) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 void* devm_kzalloc (struct device*,int,int ) ;
 struct device_node* of_parse_phandle (struct device_node*,char*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct rockchip_dfi*) ;
 int rockchip_dfi_ops ;
 int syscon_node_to_regmap (struct device_node*) ;

__attribute__((used)) static int rockchip_dfi_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct rockchip_dfi *data;
 struct resource *res;
 struct devfreq_event_desc *desc;
 struct device_node *np = pdev->dev.of_node, *node;

 data = devm_kzalloc(dev, sizeof(struct rockchip_dfi), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 data->regs = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(data->regs))
  return PTR_ERR(data->regs);

 data->clk = devm_clk_get(dev, "pclk_ddr_mon");
 if (IS_ERR(data->clk)) {
  dev_err(dev, "Cannot get the clk dmc_clk\n");
  return PTR_ERR(data->clk);
 }


 node = of_parse_phandle(np, "rockchip,pmu", 0);
 if (node) {
  data->regmap_pmu = syscon_node_to_regmap(node);
  if (IS_ERR(data->regmap_pmu))
   return PTR_ERR(data->regmap_pmu);
 }
 data->dev = dev;

 desc = devm_kzalloc(dev, sizeof(*desc), GFP_KERNEL);
 if (!desc)
  return -ENOMEM;

 desc->ops = &rockchip_dfi_ops;
 desc->driver_data = data;
 desc->name = np->name;
 data->desc = desc;

 data->edev = devm_devfreq_event_add_edev(&pdev->dev, desc);
 if (IS_ERR(data->edev)) {
  dev_err(&pdev->dev,
   "failed to add devfreq-event device\n");
  return PTR_ERR(data->edev);
 }

 platform_set_drvdata(pdev, data);

 return 0;
}
