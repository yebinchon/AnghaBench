#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct soc_device_attribute {TYPE_2__* data; } ;
struct resource {scalar_t__ start; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct dsi_module_id_data {scalar_t__ address; int /*<<< orphan*/  id; } ;
struct TYPE_5__ {int /*<<< orphan*/  last_reset; } ;
struct dsi_data {scalar_t__ irq; int num_lanes_supported; TYPE_2__* data; TYPE_4__* vc; int /*<<< orphan*/  syscon; int /*<<< orphan*/  module_id; void* vdds_dsi_reg; void* pll_base; void* phy_base; void* proto_base; int /*<<< orphan*/  te_timer; int /*<<< orphan*/  framedone_timeout_work; int /*<<< orphan*/  bus_lock; int /*<<< orphan*/  lock; TYPE_1__ irq_stats; int /*<<< orphan*/  irq_stats_lock; scalar_t__ errors; int /*<<< orphan*/  errors_lock; int /*<<< orphan*/  irq_lock; struct device* dev; } ;
struct device_node {int dummy; } ;
struct TYPE_8__ {scalar_t__ vc_id; int /*<<< orphan*/ * dssdev; int /*<<< orphan*/  source; } ;
struct TYPE_7__ {TYPE_2__* data; } ;
struct TYPE_6__ {scalar_t__ model; int quirks; struct dsi_module_id_data* modules; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  DSI_GNQ ; 
 scalar_t__ DSI_MODEL_OMAP4 ; 
 scalar_t__ DSI_MODEL_OMAP5 ; 
 int DSI_QUIRK_GNQ ; 
 int /*<<< orphan*/  DSI_VC_SOURCE_L4 ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC3 (void*) ; 
 int FUNC4 (void*) ; 
 int FUNC5 (struct dsi_data*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC6 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,struct dsi_data*) ; 
 void* FUNC9 (struct device*,struct resource*) ; 
 struct dsi_data* FUNC10 (struct device*,int,int /*<<< orphan*/ ) ; 
 void* FUNC11 (struct device*,char*) ; 
 int FUNC12 (struct device*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dsi_data*) ; 
 int /*<<< orphan*/  dsi_component_ops ; 
 int /*<<< orphan*/  dsi_framedone_timeout_work_callback ; 
 int FUNC13 (struct dsi_data*) ; 
 int FUNC14 (struct dsi_data*) ; 
 int /*<<< orphan*/  dsi_of_match ; 
 int FUNC15 (struct dsi_data*) ; 
 int /*<<< orphan*/  FUNC16 (struct dsi_data*) ; 
 int /*<<< orphan*/  FUNC17 (struct dsi_data*) ; 
 int /*<<< orphan*/  dsi_soc_devices ; 
 int /*<<< orphan*/  dsi_te_timeout ; 
 int /*<<< orphan*/  FUNC18 (struct dsi_data*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 struct device_node* FUNC20 (int /*<<< orphan*/ *,char*) ; 
 TYPE_3__* FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC23 (struct device*) ; 
 int FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct device*) ; 
 int /*<<< orphan*/  omap_dsi_irq_handler ; 
 scalar_t__ FUNC25 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC26 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC27 (struct device*) ; 
 int /*<<< orphan*/  FUNC28 (struct device*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,int) ; 
 struct soc_device_attribute* FUNC30 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC34(struct platform_device *pdev)
{
	const struct soc_device_attribute *soc;
	const struct dsi_module_id_data *d;
	struct device *dev = &pdev->dev;
	struct dsi_data *dsi;
	struct resource *dsi_mem;
	struct resource *res;
	unsigned int i;
	int r;

	dsi = FUNC10(dev, sizeof(*dsi), GFP_KERNEL);
	if (!dsi)
		return -ENOMEM;

	dsi->dev = dev;
	FUNC8(dev, dsi);

	FUNC31(&dsi->irq_lock);
	FUNC31(&dsi->errors_lock);
	dsi->errors = 0;

#ifdef CONFIG_OMAP2_DSS_COLLECT_IRQ_STATS
	spin_lock_init(&dsi->irq_stats_lock);
	dsi->irq_stats.last_reset = jiffies;
#endif

	FUNC19(&dsi->lock);
	FUNC29(&dsi->bus_lock, 1);

	FUNC2(&dsi->framedone_timeout_work,
			     dsi_framedone_timeout_work_callback);

#ifdef DSI_CATCH_MISSING_TE
	timer_setup(&dsi->te_timer, dsi_te_timeout, 0);
#endif

	dsi_mem = FUNC26(pdev, IORESOURCE_MEM, "proto");
	dsi->proto_base = FUNC9(dev, dsi_mem);
	if (FUNC3(dsi->proto_base))
		return FUNC4(dsi->proto_base);

	res = FUNC26(pdev, IORESOURCE_MEM, "phy");
	dsi->phy_base = FUNC9(dev, res);
	if (FUNC3(dsi->phy_base))
		return FUNC4(dsi->phy_base);

	res = FUNC26(pdev, IORESOURCE_MEM, "pll");
	dsi->pll_base = FUNC9(dev, res);
	if (FUNC3(dsi->pll_base))
		return FUNC4(dsi->pll_base);

	dsi->irq = FUNC25(pdev, 0);
	if (dsi->irq < 0) {
		FUNC1("platform_get_irq failed\n");
		return -ENODEV;
	}

	r = FUNC12(dev, dsi->irq, omap_dsi_irq_handler,
			     IRQF_SHARED, FUNC7(dev), dsi);
	if (r < 0) {
		FUNC1("request_irq failed\n");
		return r;
	}

	dsi->vdds_dsi_reg = FUNC11(dev, "vdd");
	if (FUNC3(dsi->vdds_dsi_reg)) {
		if (FUNC4(dsi->vdds_dsi_reg) != -EPROBE_DEFER)
			FUNC1("can't get DSI VDD regulator\n");
		return FUNC4(dsi->vdds_dsi_reg);
	}

	soc = FUNC30(dsi_soc_devices);
	if (soc)
		dsi->data = soc->data;
	else
		dsi->data = FUNC21(dsi_of_match, dev->of_node)->data;

	d = dsi->data->modules;
	while (d->address != 0 && d->address != dsi_mem->start)
		d++;

	if (d->address == 0) {
		FUNC1("unsupported DSI module\n");
		return -ENODEV;
	}

	dsi->module_id = d->id;

	if (dsi->data->model == DSI_MODEL_OMAP4 ||
	    dsi->data->model == DSI_MODEL_OMAP5) {
		struct device_node *np;

		/*
		 * The OMAP4/5 display DT bindings don't reference the padconf
		 * syscon. Our only option to retrieve it is to find it by name.
		 */
		np = FUNC20(NULL,
			dsi->data->model == DSI_MODEL_OMAP4 ?
			"omap4_padconf_global" : "omap5_padconf_global");
		if (!np)
			return -ENODEV;

		dsi->syscon = FUNC32(np);
		FUNC22(np);
	}

	/* DSI VCs initialization */
	for (i = 0; i < FUNC0(dsi->vc); i++) {
		dsi->vc[i].source = DSI_VC_SOURCE_L4;
		dsi->vc[i].dssdev = NULL;
		dsi->vc[i].vc_id = 0;
	}

	r = FUNC13(dsi);
	if (r)
		return r;

	FUNC28(dev);

	/* DSI on OMAP3 doesn't have register DSI_GNQ, set number
	 * of data to 3 by default */
	if (dsi->data->quirks & DSI_QUIRK_GNQ) {
		FUNC16(dsi);
		/* NB_DATA_LANES */
		dsi->num_lanes_supported = 1 + FUNC5(dsi, DSI_GNQ, 11, 9);
		FUNC17(dsi);
	} else {
		dsi->num_lanes_supported = 3;
	}

	r = FUNC24(dev->of_node, NULL, NULL, dev);
	if (r) {
		FUNC1("Failed to populate DSI child devices: %d\n", r);
		goto err_pm_disable;
	}

	r = FUNC14(dsi);
	if (r)
		goto err_of_depopulate;

	r = FUNC15(dsi);
	if (r) {
		FUNC1("Invalid DSI DT data\n");
		goto err_uninit_output;
	}

	r = FUNC6(&pdev->dev, &dsi_component_ops);
	if (r)
		goto err_uninit_output;

	return 0;

err_uninit_output:
	FUNC18(dsi);
err_of_depopulate:
	FUNC23(dev);
err_pm_disable:
	FUNC27(dev);
	return r;
}