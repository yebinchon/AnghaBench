#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_16__ {int /*<<< orphan*/  owner; int /*<<< orphan*/ * pmxops; int /*<<< orphan*/ * pctlops; int /*<<< orphan*/  npins; int /*<<< orphan*/  pins; int /*<<< orphan*/  name; } ;
struct TYPE_15__ {TYPE_1__* dev; int /*<<< orphan*/  transfer; } ;
struct tegra_dpaux {int /*<<< orphan*/  list; void* pinctrl; TYPE_8__ desc; TYPE_3__ aux; int /*<<< orphan*/  irq; TYPE_1__* dev; void* vdd; void* clk_parent; void* clk; void* rst; void* regs; int /*<<< orphan*/  complete; int /*<<< orphan*/  work; } ;
struct resource {int dummy; } ;
struct TYPE_14__ {int /*<<< orphan*/  pm_domain; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DPAUX_INTR_AUX ; 
 int DPAUX_INTR_AUX_DONE ; 
 int /*<<< orphan*/  DPAUX_INTR_EN_AUX ; 
 int DPAUX_INTR_IRQ_EVENT ; 
 int DPAUX_INTR_PLUG_EVENT ; 
 int DPAUX_INTR_UNPLUG_EVENT ; 
 int /*<<< orphan*/  DPAUX_PADCTL_FUNC_I2C ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC3 (void*) ; 
 int FUNC4 (void*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC5 (void*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 void* FUNC8 (TYPE_1__*,char*) ; 
 void* FUNC9 (TYPE_1__*,struct resource*) ; 
 struct tegra_dpaux* FUNC10 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 void* FUNC11 (TYPE_1__*,TYPE_8__*,struct tegra_dpaux*) ; 
 void* FUNC12 (TYPE_1__*,char*) ; 
 int FUNC13 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tegra_dpaux*) ; 
 void* FUNC14 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dpaux_list ; 
 int /*<<< orphan*/  dpaux_lock ; 
 int FUNC16 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC22 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct platform_device*,struct tegra_dpaux*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_1__*) ; 
 int /*<<< orphan*/  tegra_dpaux_hotplug ; 
 int /*<<< orphan*/  tegra_dpaux_irq ; 
 int FUNC26 (struct tegra_dpaux*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tegra_dpaux_pinctrl_ops ; 
 int /*<<< orphan*/  tegra_dpaux_pinmux_ops ; 
 int /*<<< orphan*/  tegra_dpaux_pins ; 
 int /*<<< orphan*/  tegra_dpaux_transfer ; 
 int /*<<< orphan*/  FUNC27 (struct tegra_dpaux*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC28(struct platform_device *pdev)
{
	struct tegra_dpaux *dpaux;
	struct resource *regs;
	u32 value;
	int err;

	dpaux = FUNC10(&pdev->dev, sizeof(*dpaux), GFP_KERNEL);
	if (!dpaux)
		return -ENOMEM;

	FUNC2(&dpaux->work, tegra_dpaux_hotplug);
	FUNC17(&dpaux->complete);
	FUNC1(&dpaux->list);
	dpaux->dev = &pdev->dev;

	regs = FUNC22(pdev, IORESOURCE_MEM, 0);
	dpaux->regs = FUNC9(&pdev->dev, regs);
	if (FUNC3(dpaux->regs))
		return FUNC4(dpaux->regs);

	dpaux->irq = FUNC21(pdev, 0);
	if (dpaux->irq < 0) {
		FUNC6(&pdev->dev, "failed to get IRQ\n");
		return -ENXIO;
	}

	if (!pdev->dev.pm_domain) {
		dpaux->rst = FUNC14(&pdev->dev, "dpaux");
		if (FUNC3(dpaux->rst)) {
			FUNC6(&pdev->dev,
				"failed to get reset control: %ld\n",
				FUNC4(dpaux->rst));
			return FUNC4(dpaux->rst);
		}
	}

	dpaux->clk = FUNC8(&pdev->dev, NULL);
	if (FUNC3(dpaux->clk)) {
		FUNC6(&pdev->dev, "failed to get module clock: %ld\n",
			FUNC4(dpaux->clk));
		return FUNC4(dpaux->clk);
	}

	dpaux->clk_parent = FUNC8(&pdev->dev, "parent");
	if (FUNC3(dpaux->clk_parent)) {
		FUNC6(&pdev->dev, "failed to get parent clock: %ld\n",
			FUNC4(dpaux->clk_parent));
		return FUNC4(dpaux->clk_parent);
	}

	err = FUNC5(dpaux->clk_parent, 270000000);
	if (err < 0) {
		FUNC6(&pdev->dev, "failed to set clock to 270 MHz: %d\n",
			err);
		return err;
	}

	dpaux->vdd = FUNC12(&pdev->dev, "vdd");
	if (FUNC3(dpaux->vdd)) {
		if (FUNC4(dpaux->vdd) != -ENODEV) {
			if (FUNC4(dpaux->vdd) != -EPROBE_DEFER)
				FUNC6(&pdev->dev,
					"failed to get VDD supply: %ld\n",
					FUNC4(dpaux->vdd));

			return FUNC4(dpaux->vdd);
		}
	}

	FUNC23(pdev, dpaux);
	FUNC24(&pdev->dev);
	FUNC25(&pdev->dev);

	err = FUNC13(dpaux->dev, dpaux->irq, tegra_dpaux_irq, 0,
			       FUNC7(dpaux->dev), dpaux);
	if (err < 0) {
		FUNC6(dpaux->dev, "failed to request IRQ#%u: %d\n",
			dpaux->irq, err);
		return err;
	}

	FUNC15(dpaux->irq);

	dpaux->aux.transfer = tegra_dpaux_transfer;
	dpaux->aux.dev = &pdev->dev;

	err = FUNC16(&dpaux->aux);
	if (err < 0)
		return err;

	/*
	 * Assume that by default the DPAUX/I2C pads will be used for HDMI,
	 * so power them up and configure them in I2C mode.
	 *
	 * The DPAUX code paths reconfigure the pads in AUX mode, but there
	 * is no possibility to perform the I2C mode configuration in the
	 * HDMI path.
	 */
	err = FUNC26(dpaux, DPAUX_PADCTL_FUNC_I2C);
	if (err < 0)
		return err;

#ifdef CONFIG_GENERIC_PINCONF
	dpaux->desc.name = dev_name(&pdev->dev);
	dpaux->desc.pins = tegra_dpaux_pins;
	dpaux->desc.npins = ARRAY_SIZE(tegra_dpaux_pins);
	dpaux->desc.pctlops = &tegra_dpaux_pinctrl_ops;
	dpaux->desc.pmxops = &tegra_dpaux_pinmux_ops;
	dpaux->desc.owner = THIS_MODULE;

	dpaux->pinctrl = devm_pinctrl_register(&pdev->dev, &dpaux->desc, dpaux);
	if (IS_ERR(dpaux->pinctrl)) {
		dev_err(&pdev->dev, "failed to register pincontrol\n");
		return PTR_ERR(dpaux->pinctrl);
	}
#endif
	/* enable and clear all interrupts */
	value = DPAUX_INTR_AUX_DONE | DPAUX_INTR_IRQ_EVENT |
		DPAUX_INTR_UNPLUG_EVENT | DPAUX_INTR_PLUG_EVENT;
	FUNC27(dpaux, value, DPAUX_INTR_EN_AUX);
	FUNC27(dpaux, value, DPAUX_INTR_AUX);

	FUNC19(&dpaux_lock);
	FUNC18(&dpaux->list, &dpaux_list);
	FUNC20(&dpaux_lock);

	return 0;
}