
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
struct TYPE_2__ {struct clk_init_data* init; } ;
struct mtk_mipi_tx {struct phy_provider* pll; struct device* dev; TYPE_1__ pll_hw; struct phy_provider* regs; int driver_data; } ;
struct clk_init_data {int num_parents; char const* const* parent_names; int name; int flags; int * ops; } ;
typedef struct phy_provider clk ;


 int CLK_SET_RATE_GATE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (struct phy_provider*) ;
 int PTR_ERR (struct phy_provider*) ;
 char* __clk_get_name (struct phy_provider*) ;
 int dev_err (struct device*,char*,int) ;
 struct phy_provider* devm_clk_get (struct device*,int *) ;
 struct phy_provider* devm_clk_register (struct device*,TYPE_1__*) ;
 struct phy_provider* devm_ioremap_resource (struct device*,struct resource*) ;
 struct mtk_mipi_tx* devm_kzalloc (struct device*,int,int ) ;
 struct phy_provider* devm_of_phy_provider_register (struct device*,int ) ;
 struct phy_provider* devm_phy_create (struct device*,int *,int *) ;
 int mtk_mipi_tx_ops ;
 int mtk_mipi_tx_pll_ops ;
 int of_clk_add_provider (int ,int ,struct phy_provider*) ;
 int of_clk_src_simple_get ;
 int of_device_get_match_data (struct device*) ;
 int of_phy_simple_xlate ;
 int of_property_read_string (int ,char*,int *) ;
 int phy_set_drvdata (struct phy_provider*,struct mtk_mipi_tx*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;

__attribute__((used)) static int mtk_mipi_tx_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct mtk_mipi_tx *mipi_tx;
 struct resource *mem;
 struct clk *ref_clk;
 const char *ref_clk_name;
 struct clk_init_data clk_init = {
  .ops = &mtk_mipi_tx_pll_ops,
  .num_parents = 1,
  .parent_names = (const char * const *)&ref_clk_name,
  .flags = CLK_SET_RATE_GATE,
 };
 struct phy *phy;
 struct phy_provider *phy_provider;
 int ret;

 mipi_tx = devm_kzalloc(dev, sizeof(*mipi_tx), GFP_KERNEL);
 if (!mipi_tx)
  return -ENOMEM;

 mipi_tx->driver_data = of_device_get_match_data(dev);
 mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 mipi_tx->regs = devm_ioremap_resource(dev, mem);
 if (IS_ERR(mipi_tx->regs)) {
  ret = PTR_ERR(mipi_tx->regs);
  dev_err(dev, "Failed to get memory resource: %d\n", ret);
  return ret;
 }

 ref_clk = devm_clk_get(dev, ((void*)0));
 if (IS_ERR(ref_clk)) {
  ret = PTR_ERR(ref_clk);
  dev_err(dev, "Failed to get reference clock: %d\n", ret);
  return ret;
 }
 ref_clk_name = __clk_get_name(ref_clk);

 ret = of_property_read_string(dev->of_node, "clock-output-names",
          &clk_init.name);
 if (ret < 0) {
  dev_err(dev, "Failed to read clock-output-names: %d\n", ret);
  return ret;
 }

 mipi_tx->pll_hw.init = &clk_init;
 mipi_tx->pll = devm_clk_register(dev, &mipi_tx->pll_hw);
 if (IS_ERR(mipi_tx->pll)) {
  ret = PTR_ERR(mipi_tx->pll);
  dev_err(dev, "Failed to register PLL: %d\n", ret);
  return ret;
 }

 phy = devm_phy_create(dev, ((void*)0), &mtk_mipi_tx_ops);
 if (IS_ERR(phy)) {
  ret = PTR_ERR(phy);
  dev_err(dev, "Failed to create MIPI D-PHY: %d\n", ret);
  return ret;
 }
 phy_set_drvdata(phy, mipi_tx);

 phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
 if (IS_ERR(phy_provider)) {
  ret = PTR_ERR(phy_provider);
  return ret;
 }

 mipi_tx->dev = dev;

 return of_clk_add_provider(dev->of_node, of_clk_src_simple_get,
       mipi_tx->pll);
}
