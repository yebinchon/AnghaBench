
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct phy_provider {int dummy; } ;
typedef struct phy_provider phy ;
struct mtk_hdmi_phy_conf {int dummy; } ;
struct TYPE_2__ {struct clk_init_data* init; } ;
struct mtk_hdmi_phy {int drv_imp_clk; int drv_imp_d2; int drv_imp_d1; int drv_imp_d0; struct phy_provider* pll; int ibias_up; int ibias; TYPE_1__ pll_hw; struct mtk_hdmi_phy_conf* conf; struct device* dev; struct phy_provider* regs; } ;
struct clk_init_data {int num_parents; char const* const* parent_names; int name; } ;
typedef struct phy_provider clk ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (struct phy_provider*) ;
 int PTR_ERR (struct phy_provider*) ;
 char* __clk_get_name (struct phy_provider*) ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*) ;
 struct phy_provider* devm_clk_get (struct device*,char*) ;
 struct phy_provider* devm_clk_register (struct device*,TYPE_1__*) ;
 struct phy_provider* devm_ioremap_resource (struct device*,struct resource*) ;
 struct mtk_hdmi_phy* devm_kzalloc (struct device*,int,int ) ;
 struct phy_provider* devm_of_phy_provider_register (struct device*,int ) ;
 struct phy_provider* devm_phy_create (struct device*,int *,int ) ;
 int mtk_hdmi_phy_clk_get_data (struct mtk_hdmi_phy*,struct clk_init_data*) ;
 int mtk_hdmi_phy_dev_get_ops (struct mtk_hdmi_phy*) ;
 int of_clk_add_provider (int ,int ,struct phy_provider*) ;
 int of_clk_src_simple_get ;
 scalar_t__ of_device_get_match_data (struct device*) ;
 int of_phy_simple_xlate ;
 int of_property_read_string (int ,char*,int *) ;
 int of_property_read_u32 (int ,char*,int *) ;
 int phy_set_drvdata (struct phy_provider*,struct mtk_hdmi_phy*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;

__attribute__((used)) static int mtk_hdmi_phy_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct mtk_hdmi_phy *hdmi_phy;
 struct resource *mem;
 struct clk *ref_clk;
 const char *ref_clk_name;
 struct clk_init_data clk_init = {
  .num_parents = 1,
  .parent_names = (const char * const *)&ref_clk_name,
 };

 struct phy *phy;
 struct phy_provider *phy_provider;
 int ret;

 hdmi_phy = devm_kzalloc(dev, sizeof(*hdmi_phy), GFP_KERNEL);
 if (!hdmi_phy)
  return -ENOMEM;

 mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 hdmi_phy->regs = devm_ioremap_resource(dev, mem);
 if (IS_ERR(hdmi_phy->regs)) {
  ret = PTR_ERR(hdmi_phy->regs);
  dev_err(dev, "Failed to get memory resource: %d\n", ret);
  return ret;
 }

 ref_clk = devm_clk_get(dev, "pll_ref");
 if (IS_ERR(ref_clk)) {
  ret = PTR_ERR(ref_clk);
  dev_err(&pdev->dev, "Failed to get PLL reference clock: %d\n",
   ret);
  return ret;
 }
 ref_clk_name = __clk_get_name(ref_clk);

 ret = of_property_read_string(dev->of_node, "clock-output-names",
          &clk_init.name);
 if (ret < 0) {
  dev_err(dev, "Failed to read clock-output-names: %d\n", ret);
  return ret;
 }

 hdmi_phy->dev = dev;
 hdmi_phy->conf =
  (struct mtk_hdmi_phy_conf *)of_device_get_match_data(dev);
 mtk_hdmi_phy_clk_get_data(hdmi_phy, &clk_init);
 hdmi_phy->pll_hw.init = &clk_init;
 hdmi_phy->pll = devm_clk_register(dev, &hdmi_phy->pll_hw);
 if (IS_ERR(hdmi_phy->pll)) {
  ret = PTR_ERR(hdmi_phy->pll);
  dev_err(dev, "Failed to register PLL: %d\n", ret);
  return ret;
 }

 ret = of_property_read_u32(dev->of_node, "mediatek,ibias",
       &hdmi_phy->ibias);
 if (ret < 0) {
  dev_err(&pdev->dev, "Failed to get ibias: %d\n", ret);
  return ret;
 }

 ret = of_property_read_u32(dev->of_node, "mediatek,ibias_up",
       &hdmi_phy->ibias_up);
 if (ret < 0) {
  dev_err(&pdev->dev, "Failed to get ibias up: %d\n", ret);
  return ret;
 }

 dev_info(dev, "Using default TX DRV impedance: 4.2k/36\n");
 hdmi_phy->drv_imp_clk = 0x30;
 hdmi_phy->drv_imp_d2 = 0x30;
 hdmi_phy->drv_imp_d1 = 0x30;
 hdmi_phy->drv_imp_d0 = 0x30;

 phy = devm_phy_create(dev, ((void*)0), mtk_hdmi_phy_dev_get_ops(hdmi_phy));
 if (IS_ERR(phy)) {
  dev_err(dev, "Failed to create HDMI PHY\n");
  return PTR_ERR(phy);
 }
 phy_set_drvdata(phy, hdmi_phy);

 phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
 if (IS_ERR(phy_provider)) {
  dev_err(dev, "Failed to register HDMI PHY\n");
  return PTR_ERR(phy_provider);
 }

 return of_clk_add_provider(dev->of_node, of_clk_src_simple_get,
       hdmi_phy->pll);
}
