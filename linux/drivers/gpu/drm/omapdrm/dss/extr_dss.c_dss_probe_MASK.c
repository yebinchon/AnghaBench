#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct soc_device_attribute {int /*<<< orphan*/  data; } ;
struct resource {int dummy; } ;
struct TYPE_15__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_14__ {void* dss; void* clk; } ;
struct dss_device {scalar_t__ video2_pll; scalar_t__ video1_pll; TYPE_1__ debugfs; int /*<<< orphan*/  base; int /*<<< orphan*/  feat; struct platform_device* pdev; } ;
struct component_match {int dummy; } ;
struct TYPE_16__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,struct component_match*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,struct component_match**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,struct resource*) ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dss_add_child_component ; 
 int /*<<< orphan*/  dss_component_ops ; 
 int /*<<< orphan*/  dss_debug_dump_clocks ; 
 void* FUNC8 (struct dss_device*,char*,int /*<<< orphan*/ ,struct dss_device*) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 int /*<<< orphan*/  dss_dump_regs ; 
 int FUNC10 (struct dss_device*) ; 
 int FUNC11 (struct dss_device*) ; 
 int FUNC12 (struct dss_device*) ; 
 int /*<<< orphan*/  dss_of_match ; 
 int FUNC13 (struct dss_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct dss_device*) ; 
 int FUNC15 (struct dss_device*) ; 
 int /*<<< orphan*/  dss_soc_devices ; 
 int /*<<< orphan*/  FUNC16 (struct dss_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct dss_device*) ; 
 int FUNC18 (struct dss_device*) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (struct dss_device*) ; 
 struct dss_device* FUNC21 (int,int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC22 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_2__*) ; 
 int FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_2__*) ; 
 struct resource* FUNC26 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct platform_device*,struct dss_device*) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_2__*) ; 
 struct soc_device_attribute* FUNC30 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC31(struct platform_device *pdev)
{
	const struct soc_device_attribute *soc;
	struct component_match *match = NULL;
	struct resource *dss_mem;
	struct dss_device *dss;
	int r;

	dss = FUNC21(sizeof(*dss), GFP_KERNEL);
	if (!dss)
		return -ENOMEM;

	dss->pdev = pdev;
	FUNC27(pdev, dss);

	r = FUNC7(&pdev->dev, FUNC0(32));
	if (r) {
		FUNC4(&pdev->dev, "Failed to set the DMA mask\n");
		goto err_free_dss;
	}

	/*
	 * The various OMAP3-based SoCs can't be told apart using the compatible
	 * string, use SoC device matching.
	 */
	soc = FUNC30(dss_soc_devices);
	if (soc)
		dss->feat = soc->data;
	else
		dss->feat = FUNC22(dss_of_match, &pdev->dev)->data;

	/* Map I/O registers, get and setup clocks. */
	dss_mem = FUNC26(pdev, IORESOURCE_MEM, 0);
	dss->base = FUNC6(&pdev->dev, dss_mem);
	if (FUNC1(dss->base)) {
		r = FUNC2(dss->base);
		goto err_free_dss;
	}

	r = FUNC10(dss);
	if (r)
		goto err_free_dss;

	r = FUNC15(dss);
	if (r)
		goto err_put_clocks;

	/* Setup the video PLLs and the DPI and SDI ports. */
	r = FUNC18(dss);
	if (r)
		goto err_put_clocks;

	r = FUNC11(dss);
	if (r)
		goto err_uninit_plls;

	/* Enable runtime PM and probe the hardware. */
	FUNC29(&pdev->dev);

	r = FUNC13(dss);
	if (r)
		goto err_pm_runtime_disable;

	/* Initialize debugfs. */
	r = FUNC12(dss);
	if (r)
		goto err_pm_runtime_disable;

	dss->debugfs.clk = FUNC8(dss, "clk",
						   dss_debug_dump_clocks, dss);
	dss->debugfs.dss = FUNC8(dss, "dss", dss_dump_regs,
						   dss);

	/* Add all the child devices as components. */
	r = FUNC24(pdev->dev.of_node, NULL, NULL, &pdev->dev);
	if (r)
		goto err_uninit_debugfs;

	FUNC25(&pdev->dev);

	FUNC5(&pdev->dev, &match, dss_add_child_component);

	r = FUNC3(&pdev->dev, &dss_component_ops, match);
	if (r)
		goto err_of_depopulate;

	return 0;

err_of_depopulate:
	FUNC23(&pdev->dev);

err_uninit_debugfs:
	FUNC9(dss->debugfs.clk);
	FUNC9(dss->debugfs.dss);
	FUNC17(dss);

err_pm_runtime_disable:
	FUNC28(&pdev->dev);
	FUNC16(dss);

err_uninit_plls:
	if (dss->video1_pll)
		FUNC19(dss->video1_pll);
	if (dss->video2_pll)
		FUNC19(dss->video2_pll);

err_put_clocks:
	FUNC14(dss);

err_free_dss:
	FUNC20(dss);

	return r;
}