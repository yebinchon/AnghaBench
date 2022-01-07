
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_16__ {int owner; int * pmxops; int * pctlops; int npins; int pins; int name; } ;
struct TYPE_15__ {TYPE_1__* dev; int transfer; } ;
struct tegra_dpaux {int list; void* pinctrl; TYPE_8__ desc; TYPE_3__ aux; int irq; TYPE_1__* dev; void* vdd; void* clk_parent; void* clk; void* rst; void* regs; int complete; int work; } ;
struct resource {int dummy; } ;
struct TYPE_14__ {int pm_domain; } ;
struct platform_device {TYPE_1__ dev; } ;


 int ARRAY_SIZE (int ) ;
 int DPAUX_INTR_AUX ;
 int DPAUX_INTR_AUX_DONE ;
 int DPAUX_INTR_EN_AUX ;
 int DPAUX_INTR_IRQ_EVENT ;
 int DPAUX_INTR_PLUG_EVENT ;
 int DPAUX_INTR_UNPLUG_EVENT ;
 int DPAUX_PADCTL_FUNC_I2C ;
 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int THIS_MODULE ;
 int clk_set_rate (void*,int) ;
 int dev_err (TYPE_1__*,char*,...) ;
 int dev_name (TYPE_1__*) ;
 void* devm_clk_get (TYPE_1__*,char*) ;
 void* devm_ioremap_resource (TYPE_1__*,struct resource*) ;
 struct tegra_dpaux* devm_kzalloc (TYPE_1__*,int,int ) ;
 void* devm_pinctrl_register (TYPE_1__*,TYPE_8__*,struct tegra_dpaux*) ;
 void* devm_regulator_get_optional (TYPE_1__*,char*) ;
 int devm_request_irq (TYPE_1__*,int ,int ,int ,int ,struct tegra_dpaux*) ;
 void* devm_reset_control_get (TYPE_1__*,char*) ;
 int disable_irq (int ) ;
 int dpaux_list ;
 int dpaux_lock ;
 int drm_dp_aux_register (TYPE_3__*) ;
 int init_completion (int *) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct tegra_dpaux*) ;
 int pm_runtime_enable (TYPE_1__*) ;
 int pm_runtime_get_sync (TYPE_1__*) ;
 int tegra_dpaux_hotplug ;
 int tegra_dpaux_irq ;
 int tegra_dpaux_pad_config (struct tegra_dpaux*,int ) ;
 int tegra_dpaux_pinctrl_ops ;
 int tegra_dpaux_pinmux_ops ;
 int tegra_dpaux_pins ;
 int tegra_dpaux_transfer ;
 int tegra_dpaux_writel (struct tegra_dpaux*,int,int ) ;

__attribute__((used)) static int tegra_dpaux_probe(struct platform_device *pdev)
{
 struct tegra_dpaux *dpaux;
 struct resource *regs;
 u32 value;
 int err;

 dpaux = devm_kzalloc(&pdev->dev, sizeof(*dpaux), GFP_KERNEL);
 if (!dpaux)
  return -ENOMEM;

 INIT_WORK(&dpaux->work, tegra_dpaux_hotplug);
 init_completion(&dpaux->complete);
 INIT_LIST_HEAD(&dpaux->list);
 dpaux->dev = &pdev->dev;

 regs = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 dpaux->regs = devm_ioremap_resource(&pdev->dev, regs);
 if (IS_ERR(dpaux->regs))
  return PTR_ERR(dpaux->regs);

 dpaux->irq = platform_get_irq(pdev, 0);
 if (dpaux->irq < 0) {
  dev_err(&pdev->dev, "failed to get IRQ\n");
  return -ENXIO;
 }

 if (!pdev->dev.pm_domain) {
  dpaux->rst = devm_reset_control_get(&pdev->dev, "dpaux");
  if (IS_ERR(dpaux->rst)) {
   dev_err(&pdev->dev,
    "failed to get reset control: %ld\n",
    PTR_ERR(dpaux->rst));
   return PTR_ERR(dpaux->rst);
  }
 }

 dpaux->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(dpaux->clk)) {
  dev_err(&pdev->dev, "failed to get module clock: %ld\n",
   PTR_ERR(dpaux->clk));
  return PTR_ERR(dpaux->clk);
 }

 dpaux->clk_parent = devm_clk_get(&pdev->dev, "parent");
 if (IS_ERR(dpaux->clk_parent)) {
  dev_err(&pdev->dev, "failed to get parent clock: %ld\n",
   PTR_ERR(dpaux->clk_parent));
  return PTR_ERR(dpaux->clk_parent);
 }

 err = clk_set_rate(dpaux->clk_parent, 270000000);
 if (err < 0) {
  dev_err(&pdev->dev, "failed to set clock to 270 MHz: %d\n",
   err);
  return err;
 }

 dpaux->vdd = devm_regulator_get_optional(&pdev->dev, "vdd");
 if (IS_ERR(dpaux->vdd)) {
  if (PTR_ERR(dpaux->vdd) != -ENODEV) {
   if (PTR_ERR(dpaux->vdd) != -EPROBE_DEFER)
    dev_err(&pdev->dev,
     "failed to get VDD supply: %ld\n",
     PTR_ERR(dpaux->vdd));

   return PTR_ERR(dpaux->vdd);
  }
 }

 platform_set_drvdata(pdev, dpaux);
 pm_runtime_enable(&pdev->dev);
 pm_runtime_get_sync(&pdev->dev);

 err = devm_request_irq(dpaux->dev, dpaux->irq, tegra_dpaux_irq, 0,
          dev_name(dpaux->dev), dpaux);
 if (err < 0) {
  dev_err(dpaux->dev, "failed to request IRQ#%u: %d\n",
   dpaux->irq, err);
  return err;
 }

 disable_irq(dpaux->irq);

 dpaux->aux.transfer = tegra_dpaux_transfer;
 dpaux->aux.dev = &pdev->dev;

 err = drm_dp_aux_register(&dpaux->aux);
 if (err < 0)
  return err;
 err = tegra_dpaux_pad_config(dpaux, DPAUX_PADCTL_FUNC_I2C);
 if (err < 0)
  return err;
 value = DPAUX_INTR_AUX_DONE | DPAUX_INTR_IRQ_EVENT |
  DPAUX_INTR_UNPLUG_EVENT | DPAUX_INTR_PLUG_EVENT;
 tegra_dpaux_writel(dpaux, value, DPAUX_INTR_EN_AUX);
 tegra_dpaux_writel(dpaux, value, DPAUX_INTR_AUX);

 mutex_lock(&dpaux_lock);
 list_add_tail(&dpaux->list, &dpaux_list);
 mutex_unlock(&dpaux_lock);

 return 0;
}
