
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_5__ {struct device* dev; int * ops; } ;
struct exynos_dsi {scalar_t__ irq; int encoder; int phy; int reg_base; int * clks; TYPE_2__* driver_data; TYPE_3__* supplies; struct device* dev; TYPE_1__ dsi_host; int transfer_list; int transfer_lock; int completed; int te_gpio; } ;
struct TYPE_7__ {char* supply; } ;
struct TYPE_6__ {int num_clks; } ;


 int ARRAY_SIZE (TYPE_3__*) ;
 int ENOENT ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int IORESOURCE_MEM ;
 int IRQF_ONESHOT ;
 int IRQ_NOAUTOEN ;
 scalar_t__ IS_ERR (int ) ;
 int OLD_SCLK_MIPI_CLK_NAME ;
 int PTR_ERR (int ) ;
 int * clk_names ;
 int component_add (struct device*,int *) ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*,...) ;
 int dev_name (struct device*) ;
 int devm_clk_get (struct device*,int ) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 int * devm_kcalloc (struct device*,int,int,int ) ;
 struct exynos_dsi* devm_kzalloc (struct device*,int,int ) ;
 int devm_phy_get (struct device*,char*) ;
 int devm_regulator_bulk_get (struct device*,int ,TYPE_3__*) ;
 int devm_request_threaded_irq (struct device*,int,int *,int ,int ,int ,struct exynos_dsi*) ;
 int exynos_dsi_component_ops ;
 int exynos_dsi_irq ;
 int exynos_dsi_ops ;
 int exynos_dsi_parse_dt (struct exynos_dsi*) ;
 int init_completion (int *) ;
 int irq_set_status_flags (int,int ) ;
 TYPE_2__* of_device_get_match_data (struct device*) ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 int pm_runtime_enable (struct device*) ;
 int spin_lock_init (int *) ;
 scalar_t__ strcmp (int ,char*) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int exynos_dsi_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct resource *res;
 struct exynos_dsi *dsi;
 int ret, i;

 dsi = devm_kzalloc(dev, sizeof(*dsi), GFP_KERNEL);
 if (!dsi)
  return -ENOMEM;


 dsi->te_gpio = -ENOENT;

 init_completion(&dsi->completed);
 spin_lock_init(&dsi->transfer_lock);
 INIT_LIST_HEAD(&dsi->transfer_list);

 dsi->dsi_host.ops = &exynos_dsi_ops;
 dsi->dsi_host.dev = dev;

 dsi->dev = dev;
 dsi->driver_data = of_device_get_match_data(dev);

 ret = exynos_dsi_parse_dt(dsi);
 if (ret)
  return ret;

 dsi->supplies[0].supply = "vddcore";
 dsi->supplies[1].supply = "vddio";
 ret = devm_regulator_bulk_get(dev, ARRAY_SIZE(dsi->supplies),
          dsi->supplies);
 if (ret) {
  dev_info(dev, "failed to get regulators: %d\n", ret);
  return -EPROBE_DEFER;
 }

 dsi->clks = devm_kcalloc(dev,
   dsi->driver_data->num_clks, sizeof(*dsi->clks),
   GFP_KERNEL);
 if (!dsi->clks)
  return -ENOMEM;

 for (i = 0; i < dsi->driver_data->num_clks; i++) {
  dsi->clks[i] = devm_clk_get(dev, clk_names[i]);
  if (IS_ERR(dsi->clks[i])) {
   if (strcmp(clk_names[i], "sclk_mipi") == 0) {
    strcpy(clk_names[i], OLD_SCLK_MIPI_CLK_NAME);
    i--;
    continue;
   }

   dev_info(dev, "failed to get the clock: %s\n",
     clk_names[i]);
   return PTR_ERR(dsi->clks[i]);
  }
 }

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 dsi->reg_base = devm_ioremap_resource(dev, res);
 if (IS_ERR(dsi->reg_base)) {
  dev_err(dev, "failed to remap io region\n");
  return PTR_ERR(dsi->reg_base);
 }

 dsi->phy = devm_phy_get(dev, "dsim");
 if (IS_ERR(dsi->phy)) {
  dev_info(dev, "failed to get dsim phy\n");
  return PTR_ERR(dsi->phy);
 }

 dsi->irq = platform_get_irq(pdev, 0);
 if (dsi->irq < 0) {
  dev_err(dev, "failed to request dsi irq resource\n");
  return dsi->irq;
 }

 irq_set_status_flags(dsi->irq, IRQ_NOAUTOEN);
 ret = devm_request_threaded_irq(dev, dsi->irq, ((void*)0),
     exynos_dsi_irq, IRQF_ONESHOT,
     dev_name(dev), dsi);
 if (ret) {
  dev_err(dev, "failed to request dsi irq\n");
  return ret;
 }

 platform_set_drvdata(pdev, &dsi->encoder);

 pm_runtime_enable(dev);

 return component_add(dev, &exynos_dsi_component_ops);
}
