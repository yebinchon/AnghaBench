
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * dev; int * ops; int list; } ;
struct tegra_dc {scalar_t__ pipe; scalar_t__ irq; TYPE_2__ client; int regs; int powergate; TYPE_1__* soc; int clk; int rst; int * dev; int list; } ;
struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct TYPE_3__ {scalar_t__ has_powergate; } ;


 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int TEGRA_POWERGATE_DIS ;
 int TEGRA_POWERGATE_DISB ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dc_client_ops ;
 int dev_err (int *,char*,...) ;
 int devm_clk_get (int *,int *) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct tegra_dc* devm_kzalloc (int *,int,int ) ;
 int devm_reset_control_get (int *,char*) ;
 int host1x_client_register (TYPE_2__*) ;
 TYPE_1__* of_device_get_match_data (int *) ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct tegra_dc*) ;
 int pm_runtime_enable (int *) ;
 int reset_control_assert (int ) ;
 int tegra_dc_couple (struct tegra_dc*) ;
 int tegra_dc_parse_dt (struct tegra_dc*) ;
 int tegra_dc_rgb_probe (struct tegra_dc*) ;
 int tegra_powergate_power_off (int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int tegra_dc_probe(struct platform_device *pdev)
{
 struct resource *regs;
 struct tegra_dc *dc;
 int err;

 dc = devm_kzalloc(&pdev->dev, sizeof(*dc), GFP_KERNEL);
 if (!dc)
  return -ENOMEM;

 dc->soc = of_device_get_match_data(&pdev->dev);

 INIT_LIST_HEAD(&dc->list);
 dc->dev = &pdev->dev;

 err = tegra_dc_parse_dt(dc);
 if (err < 0)
  return err;

 err = tegra_dc_couple(dc);
 if (err < 0)
  return err;

 dc->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(dc->clk)) {
  dev_err(&pdev->dev, "failed to get clock\n");
  return PTR_ERR(dc->clk);
 }

 dc->rst = devm_reset_control_get(&pdev->dev, "dc");
 if (IS_ERR(dc->rst)) {
  dev_err(&pdev->dev, "failed to get reset\n");
  return PTR_ERR(dc->rst);
 }


 err = clk_prepare_enable(dc->clk);
 if (err < 0)
  return err;

 usleep_range(2000, 4000);

 err = reset_control_assert(dc->rst);
 if (err < 0)
  return err;

 usleep_range(2000, 4000);

 clk_disable_unprepare(dc->clk);

 if (dc->soc->has_powergate) {
  if (dc->pipe == 0)
   dc->powergate = TEGRA_POWERGATE_DIS;
  else
   dc->powergate = TEGRA_POWERGATE_DISB;

  tegra_powergate_power_off(dc->powergate);
 }

 regs = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 dc->regs = devm_ioremap_resource(&pdev->dev, regs);
 if (IS_ERR(dc->regs))
  return PTR_ERR(dc->regs);

 dc->irq = platform_get_irq(pdev, 0);
 if (dc->irq < 0) {
  dev_err(&pdev->dev, "failed to get IRQ\n");
  return -ENXIO;
 }

 err = tegra_dc_rgb_probe(dc);
 if (err < 0 && err != -ENODEV) {
  dev_err(&pdev->dev, "failed to probe RGB output: %d\n", err);
  return err;
 }

 platform_set_drvdata(pdev, dc);
 pm_runtime_enable(&pdev->dev);

 INIT_LIST_HEAD(&dc->client.list);
 dc->client.ops = &dc_client_ops;
 dc->client.dev = &pdev->dev;

 err = host1x_client_register(&dc->client);
 if (err < 0) {
  dev_err(&pdev->dev, "failed to register host1x client: %d\n",
   err);
  return err;
 }

 return 0;
}
