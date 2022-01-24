#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sysmmu_drvdata {int /*<<< orphan*/  version; int /*<<< orphan*/  iommu; struct device* sysmmu; int /*<<< orphan*/  lock; int /*<<< orphan*/ * clk_master; int /*<<< orphan*/ * pclk; int /*<<< orphan*/ * aclk; int /*<<< orphan*/ * clk; int /*<<< orphan*/ * sfrbase; } ;
struct resource {int dummy; } ;
struct device {TYPE_1__* of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  fwnode; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int ENOSYS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LV1_PROT ; 
 int /*<<< orphan*/  LV2_PROT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ PG_ENT_SHIFT ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SYSMMU_LV1_PROT ; 
 int /*<<< orphan*/  SYSMMU_LV2_PROT ; 
 scalar_t__ SYSMMU_PG_ENT_SHIFT ; 
 int /*<<< orphan*/  SYSMMU_V5_LV1_PROT ; 
 int /*<<< orphan*/  SYSMMU_V5_LV2_PROT ; 
 scalar_t__ SYSMMU_V5_PG_ENT_SHIFT ; 
 int /*<<< orphan*/  FUNC3 (struct sysmmu_drvdata*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 void* FUNC6 (struct device*,char*) ; 
 int /*<<< orphan*/ * FUNC7 (struct device*,struct resource*) ; 
 struct sysmmu_drvdata* FUNC8 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sysmmu_drvdata*) ; 
 struct device* dma_dev ; 
 int /*<<< orphan*/  exynos_iommu_ops ; 
 int /*<<< orphan*/  exynos_sysmmu_irq ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC15 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*,struct sysmmu_drvdata*) ; 
 int /*<<< orphan*/  FUNC17 (struct device*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC19(struct platform_device *pdev)
{
	int irq, ret;
	struct device *dev = &pdev->dev;
	struct sysmmu_drvdata *data;
	struct resource *res;

	data = FUNC8(dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	res = FUNC15(pdev, IORESOURCE_MEM, 0);
	data->sfrbase = FUNC7(dev, res);
	if (FUNC0(data->sfrbase))
		return FUNC2(data->sfrbase);

	irq = FUNC14(pdev, 0);
	if (irq <= 0)
		return irq;

	ret = FUNC9(dev, irq, exynos_sysmmu_irq, 0,
				FUNC5(dev), data);
	if (ret) {
		FUNC4(dev, "Unabled to register handler of irq %d\n", irq);
		return ret;
	}

	data->clk = FUNC6(dev, "sysmmu");
	if (FUNC2(data->clk) == -ENOENT)
		data->clk = NULL;
	else if (FUNC0(data->clk))
		return FUNC2(data->clk);

	data->aclk = FUNC6(dev, "aclk");
	if (FUNC2(data->aclk) == -ENOENT)
		data->aclk = NULL;
	else if (FUNC0(data->aclk))
		return FUNC2(data->aclk);

	data->pclk = FUNC6(dev, "pclk");
	if (FUNC2(data->pclk) == -ENOENT)
		data->pclk = NULL;
	else if (FUNC0(data->pclk))
		return FUNC2(data->pclk);

	if (!data->clk && (!data->aclk || !data->pclk)) {
		FUNC4(dev, "Failed to get device clock(s)!\n");
		return -ENOSYS;
	}

	data->clk_master = FUNC6(dev, "master");
	if (FUNC2(data->clk_master) == -ENOENT)
		data->clk_master = NULL;
	else if (FUNC0(data->clk_master))
		return FUNC2(data->clk_master);

	data->sysmmu = dev;
	FUNC18(&data->lock);

	ret = FUNC13(&data->iommu, &pdev->dev, NULL,
				     FUNC5(data->sysmmu));
	if (ret)
		return ret;

	FUNC12(&data->iommu, &exynos_iommu_ops);
	FUNC11(&data->iommu, &dev->of_node->fwnode);

	ret = FUNC10(&data->iommu);
	if (ret)
		return ret;

	FUNC16(pdev, data);

	FUNC3(data);
	if (PG_ENT_SHIFT < 0) {
		if (FUNC1(data->version) < 5) {
			PG_ENT_SHIFT = SYSMMU_PG_ENT_SHIFT;
			LV1_PROT = SYSMMU_LV1_PROT;
			LV2_PROT = SYSMMU_LV2_PROT;
		} else {
			PG_ENT_SHIFT = SYSMMU_V5_PG_ENT_SHIFT;
			LV1_PROT = SYSMMU_V5_LV1_PROT;
			LV2_PROT = SYSMMU_V5_LV2_PROT;
		}
	}

	/*
	 * use the first registered sysmmu device for performing
	 * dma mapping operations on iommu page tables (cpu cache flush)
	 */
	if (!dma_dev)
		dma_dev = &pdev->dev;

	FUNC17(dev);

	return 0;
}