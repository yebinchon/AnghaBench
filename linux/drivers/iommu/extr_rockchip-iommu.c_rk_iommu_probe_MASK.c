#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct rk_iommu {scalar_t__ num_mmu; int num_irq; int num_clocks; TYPE_2__* clocks; int /*<<< orphan*/  group; int /*<<< orphan*/  iommu; struct device* dev; int /*<<< orphan*/  reset_disabled; int /*<<< orphan*/ * bases; } ;
struct resource {int dummy; } ;
struct device {TYPE_1__* of_node; } ;
struct platform_device {int num_resources; struct device dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  id; } ;
struct TYPE_5__ {int /*<<< orphan*/  fwnode; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*) ; 
 int FUNC8 (struct device*,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,struct resource*) ; 
 void* FUNC10 (struct device*,int,int,int /*<<< orphan*/ ) ; 
 struct rk_iommu* FUNC11 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rk_iommu*) ; 
 struct device* dma_dev ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ *,struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  platform_bus_type ; 
 int FUNC20 (struct platform_device*,int) ; 
 struct resource* FUNC21 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC22 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC23 (struct platform_device*,struct rk_iommu*) ; 
 int /*<<< orphan*/  FUNC24 (struct device*) ; 
 int /*<<< orphan*/  FUNC25 (struct device*) ; 
 int /*<<< orphan*/ * rk_iommu_clocks ; 
 int /*<<< orphan*/  rk_iommu_irq ; 
 int /*<<< orphan*/  rk_iommu_ops ; 

__attribute__((used)) static int FUNC26(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct rk_iommu *iommu;
	struct resource *res;
	int num_res = pdev->num_resources;
	int err, i;

	iommu = FUNC11(dev, sizeof(*iommu), GFP_KERNEL);
	if (!iommu)
		return -ENOMEM;

	FUNC23(pdev, iommu);
	iommu->dev = dev;
	iommu->num_mmu = 0;

	iommu->bases = FUNC10(dev, num_res, sizeof(*iommu->bases),
				    GFP_KERNEL);
	if (!iommu->bases)
		return -ENOMEM;

	for (i = 0; i < num_res; i++) {
		res = FUNC21(pdev, IORESOURCE_MEM, i);
		if (!res)
			continue;
		iommu->bases[i] = FUNC9(&pdev->dev, res);
		if (FUNC1(iommu->bases[i]))
			continue;
		iommu->num_mmu++;
	}
	if (iommu->num_mmu == 0)
		return FUNC2(iommu->bases[0]);

	iommu->num_irq = FUNC22(pdev);
	if (iommu->num_irq < 0)
		return iommu->num_irq;

	iommu->reset_disabled = FUNC7(dev,
					"rockchip,disable-mmu-reset");

	iommu->num_clocks = FUNC0(rk_iommu_clocks);
	iommu->clocks = FUNC10(iommu->dev, iommu->num_clocks,
				     sizeof(*iommu->clocks), GFP_KERNEL);
	if (!iommu->clocks)
		return -ENOMEM;

	for (i = 0; i < iommu->num_clocks; ++i)
		iommu->clocks[i].id = rk_iommu_clocks[i];

	/*
	 * iommu clocks should be present for all new devices and devicetrees
	 * but there are older devicetrees without clocks out in the wild.
	 * So clocks as optional for the time being.
	 */
	err = FUNC8(iommu->dev, iommu->num_clocks, iommu->clocks);
	if (err == -ENOENT)
		iommu->num_clocks = 0;
	else if (err)
		return err;

	err = FUNC4(iommu->num_clocks, iommu->clocks);
	if (err)
		return err;

	iommu->group = FUNC18();
	if (FUNC1(iommu->group)) {
		err = FUNC2(iommu->group);
		goto err_unprepare_clocks;
	}

	err = FUNC16(&iommu->iommu, dev, NULL, FUNC6(dev));
	if (err)
		goto err_put_group;

	FUNC15(&iommu->iommu, &rk_iommu_ops);
	FUNC14(&iommu->iommu, &dev->of_node->fwnode);

	err = FUNC13(&iommu->iommu);
	if (err)
		goto err_remove_sysfs;

	/*
	 * Use the first registered IOMMU device for domain to use with DMA
	 * API, since a domain might not physically correspond to a single
	 * IOMMU device..
	 */
	if (!dma_dev)
		dma_dev = &pdev->dev;

	FUNC3(&platform_bus_type, &rk_iommu_ops);

	FUNC25(dev);

	for (i = 0; i < iommu->num_irq; i++) {
		int irq = FUNC20(pdev, i);

		if (irq < 0)
			return irq;

		err = FUNC12(iommu->dev, irq, rk_iommu_irq,
				       IRQF_SHARED, FUNC6(dev), iommu);
		if (err) {
			FUNC24(dev);
			goto err_remove_sysfs;
		}
	}

	return 0;
err_remove_sysfs:
	FUNC17(&iommu->iommu);
err_put_group:
	FUNC19(iommu->group);
err_unprepare_clocks:
	FUNC5(iommu->num_clocks, iommu->clocks);
	return err;
}