
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct regmap {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct mtk_hdmi {int ddc_adpt; int next_bridge; struct regmap* regs; struct regmap* sys_regmap; int sys_offset; struct device* cec_dev; int dev; } ;
struct device_node {int parent; } ;


 int EINVAL ;
 int EPROBE_DEFER ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int dev_err (struct device*,char*,...) ;
 struct regmap* devm_ioremap_resource (struct device*,struct resource*) ;
 int mtk_hdmi_get_all_clk (struct mtk_hdmi*,struct device_node*) ;
 int of_device_is_compatible (struct device_node*,char*) ;
 int of_drm_find_bridge (struct device_node*) ;
 struct platform_device* of_find_device_by_node (struct device_node*) ;
 int of_find_i2c_adapter_by_node (struct device_node*) ;
 struct device_node* of_get_compatible_child (int ,char*) ;
 struct device_node* of_graph_get_remote_node (struct device_node*,int,int ) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (struct device_node*,char*,int ) ;
 int of_property_read_u32_index (struct device_node*,char*,int,int *) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 struct regmap* syscon_regmap_lookup_by_phandle (struct device_node*,char*) ;

__attribute__((used)) static int mtk_hdmi_dt_parse_pdata(struct mtk_hdmi *hdmi,
       struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct device_node *np = dev->of_node;
 struct device_node *cec_np, *remote, *i2c_np;
 struct platform_device *cec_pdev;
 struct regmap *regmap;
 struct resource *mem;
 int ret;

 ret = mtk_hdmi_get_all_clk(hdmi, np);
 if (ret) {
  dev_err(dev, "Failed to get clocks: %d\n", ret);
  return ret;
 }


 cec_np = of_get_compatible_child(np->parent, "mediatek,mt8173-cec");
 if (!cec_np) {
  dev_err(dev, "Failed to find CEC node\n");
  return -EINVAL;
 }

 cec_pdev = of_find_device_by_node(cec_np);
 if (!cec_pdev) {
  dev_err(hdmi->dev, "Waiting for CEC device %pOF\n",
   cec_np);
  of_node_put(cec_np);
  return -EPROBE_DEFER;
 }
 of_node_put(cec_np);
 hdmi->cec_dev = &cec_pdev->dev;






 regmap = syscon_regmap_lookup_by_phandle(np, "mediatek,syscon-hdmi");
 ret = of_property_read_u32_index(np, "mediatek,syscon-hdmi", 1,
      &hdmi->sys_offset);
 if (IS_ERR(regmap))
  ret = PTR_ERR(regmap);
 if (ret) {
  dev_err(dev,
   "Failed to get system configuration registers: %d\n",
   ret);
  return ret;
 }
 hdmi->sys_regmap = regmap;

 mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 hdmi->regs = devm_ioremap_resource(dev, mem);
 if (IS_ERR(hdmi->regs))
  return PTR_ERR(hdmi->regs);

 remote = of_graph_get_remote_node(np, 1, 0);
 if (!remote)
  return -EINVAL;

 if (!of_device_is_compatible(remote, "hdmi-connector")) {
  hdmi->next_bridge = of_drm_find_bridge(remote);
  if (!hdmi->next_bridge) {
   dev_err(dev, "Waiting for external bridge\n");
   of_node_put(remote);
   return -EPROBE_DEFER;
  }
 }

 i2c_np = of_parse_phandle(remote, "ddc-i2c-bus", 0);
 if (!i2c_np) {
  dev_err(dev, "Failed to find ddc-i2c-bus node in %pOF\n",
   remote);
  of_node_put(remote);
  return -EINVAL;
 }
 of_node_put(remote);

 hdmi->ddc_adpt = of_find_i2c_adapter_by_node(i2c_np);
 of_node_put(i2c_np);
 if (!hdmi->ddc_adpt) {
  dev_err(dev, "Failed to get ddc i2c adapter by node\n");
  return -EINVAL;
 }

 return 0;
}
