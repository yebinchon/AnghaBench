#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct soc_device_attribute {int /*<<< orphan*/  data; } ;
struct resource {int dummy; } ;
struct TYPE_8__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct dss_device {int /*<<< orphan*/ * dispc_ops; struct dispc_device* dispc; } ;
struct dispc_device {scalar_t__ irq; int /*<<< orphan*/  debugfs; int /*<<< orphan*/  syscon_pol_offset; int /*<<< orphan*/  syscon_pol; struct platform_device* pdev; int /*<<< orphan*/  base; int /*<<< orphan*/  feat; int /*<<< orphan*/  control_lock; struct dss_device* dss; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISPC_REVISION ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dispc_device*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,struct resource*) ; 
 int /*<<< orphan*/  dispc_dump_regs ; 
 int FUNC8 (struct dispc_device*) ; 
 int FUNC9 (struct dispc_device*) ; 
 int /*<<< orphan*/  dispc_of_match ; 
 int /*<<< orphan*/  dispc_ops ; 
 int /*<<< orphan*/  FUNC10 (struct dispc_device*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct dispc_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct dispc_device*) ; 
 int /*<<< orphan*/  dispc_soc_devices ; 
 int /*<<< orphan*/  FUNC13 (struct dss_device*,char*,int /*<<< orphan*/ ,struct dispc_device*) ; 
 struct dss_device* FUNC14 (struct device*) ; 
 int /*<<< orphan*/  FUNC15 (struct dispc_device*) ; 
 struct dispc_device* FUNC16 (int,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC17 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC18 (struct device_node*,char*) ; 
 scalar_t__ FUNC19 (struct device_node*,char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC21 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct platform_device*,struct dispc_device*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__*) ; 
 struct soc_device_attribute* FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (struct device_node*,char*) ; 
 struct platform_device* FUNC28 (struct device*) ; 

__attribute__((used)) static int FUNC29(struct device *dev, struct device *master, void *data)
{
	struct platform_device *pdev = FUNC28(dev);
	const struct soc_device_attribute *soc;
	struct dss_device *dss = FUNC14(master);
	struct dispc_device *dispc;
	u32 rev;
	int r = 0;
	struct resource *dispc_mem;
	struct device_node *np = pdev->dev.of_node;

	dispc = FUNC16(sizeof(*dispc), GFP_KERNEL);
	if (!dispc)
		return -ENOMEM;

	dispc->pdev = pdev;
	FUNC22(pdev, dispc);
	dispc->dss = dss;

	FUNC26(&dispc->control_lock);

	/*
	 * The OMAP3-based models can't be told apart using the compatible
	 * string, use SoC device matching.
	 */
	soc = FUNC25(dispc_soc_devices);
	if (soc)
		dispc->feat = soc->data;
	else
		dispc->feat = FUNC17(dispc_of_match, &pdev->dev)->data;

	r = FUNC8(dispc);
	if (r)
		goto err_free;

	dispc_mem = FUNC21(dispc->pdev, IORESOURCE_MEM, 0);
	dispc->base = FUNC7(&pdev->dev, dispc_mem);
	if (FUNC2(dispc->base)) {
		r = FUNC3(dispc->base);
		goto err_free;
	}

	dispc->irq = FUNC20(dispc->pdev, 0);
	if (dispc->irq < 0) {
		FUNC0("platform_get_irq failed\n");
		r = -ENODEV;
		goto err_free;
	}

	if (np && FUNC18(np, "syscon-pol")) {
		dispc->syscon_pol = FUNC27(np, "syscon-pol");
		if (FUNC2(dispc->syscon_pol)) {
			FUNC6(&pdev->dev, "failed to get syscon-pol regmap\n");
			r = FUNC3(dispc->syscon_pol);
			goto err_free;
		}

		if (FUNC19(np, "syscon-pol", 1,
				&dispc->syscon_pol_offset)) {
			FUNC6(&pdev->dev, "failed to get syscon-pol offset\n");
			r = -EINVAL;
			goto err_free;
		}
	}

	r = FUNC9(dispc);
	if (r)
		goto err_free;

	FUNC24(&pdev->dev);

	r = FUNC11(dispc);
	if (r)
		goto err_runtime_get;

	FUNC4(dispc);

	rev = FUNC10(dispc, DISPC_REVISION);
	FUNC5(&pdev->dev, "OMAP DISPC rev %d.%d\n",
	       FUNC1(rev, 7, 4), FUNC1(rev, 3, 0));

	FUNC12(dispc);

	dss->dispc = dispc;
	dss->dispc_ops = &dispc_ops;

	dispc->debugfs = FUNC13(dss, "dispc", dispc_dump_regs,
						 dispc);

	return 0;

err_runtime_get:
	FUNC23(&pdev->dev);
err_free:
	FUNC15(dispc);
	return r;
}