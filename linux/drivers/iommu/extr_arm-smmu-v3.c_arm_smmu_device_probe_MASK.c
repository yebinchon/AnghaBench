#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct device {int /*<<< orphan*/  fwnode; scalar_t__ of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_11__ {int irq; } ;
struct TYPE_12__ {TYPE_3__ q; } ;
struct TYPE_9__ {int irq; } ;
struct TYPE_10__ {TYPE_1__ q; } ;
struct arm_smmu_device {int combined_irq; int gerr_irq; int /*<<< orphan*/  iommu; TYPE_4__ priq; TYPE_2__ evtq; int /*<<< orphan*/  base; struct device* dev; } ;
typedef  int /*<<< orphan*/  resource_size_t ;
struct TYPE_13__ {int /*<<< orphan*/ * iommu_ops; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_5__ amba_bustype ; 
 int FUNC2 (struct platform_device*,struct arm_smmu_device*) ; 
 int FUNC3 (struct platform_device*,struct arm_smmu_device*) ; 
 int FUNC4 (struct arm_smmu_device*) ; 
 int FUNC5 (struct arm_smmu_device*,int) ; 
 int FUNC6 (struct arm_smmu_device*) ; 
 int /*<<< orphan*/  arm_smmu_ops ; 
 scalar_t__ FUNC7 (struct arm_smmu_device*) ; 
 int FUNC8 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (struct device*,struct resource*) ; 
 struct arm_smmu_device* FUNC11 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *,struct device*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 TYPE_5__ pci_bus_type ; 
 int /*<<< orphan*/  FUNC16 () ; 
 TYPE_5__ platform_bus_type ; 
 int FUNC17 (struct platform_device*,char*) ; 
 struct resource* FUNC18 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct platform_device*,struct arm_smmu_device*) ; 
 scalar_t__ FUNC20 (struct resource*) ; 

__attribute__((used)) static int FUNC21(struct platform_device *pdev)
{
	int irq, ret;
	struct resource *res;
	resource_size_t ioaddr;
	struct arm_smmu_device *smmu;
	struct device *dev = &pdev->dev;
	bool bypass;

	smmu = FUNC11(dev, sizeof(*smmu), GFP_KERNEL);
	if (!smmu) {
		FUNC9(dev, "failed to allocate arm_smmu_device\n");
		return -ENOMEM;
	}
	smmu->dev = dev;

	if (dev->of_node) {
		ret = FUNC3(pdev, smmu);
	} else {
		ret = FUNC2(pdev, smmu);
		if (ret == -ENODEV)
			return ret;
	}

	/* Set bypass mode according to firmware probing result */
	bypass = !!ret;

	/* Base address */
	res = FUNC18(pdev, IORESOURCE_MEM, 0);
	if (FUNC20(res) + 1 < FUNC7(smmu)) {
		FUNC9(dev, "MMIO region too small (%pr)\n", res);
		return -EINVAL;
	}
	ioaddr = res->start;

	smmu->base = FUNC10(dev, res);
	if (FUNC0(smmu->base))
		return FUNC1(smmu->base);

	/* Interrupt lines */

	irq = FUNC17(pdev, "combined");
	if (irq > 0)
		smmu->combined_irq = irq;
	else {
		irq = FUNC17(pdev, "eventq");
		if (irq > 0)
			smmu->evtq.q.irq = irq;

		irq = FUNC17(pdev, "priq");
		if (irq > 0)
			smmu->priq.q.irq = irq;

		irq = FUNC17(pdev, "gerror");
		if (irq > 0)
			smmu->gerr_irq = irq;
	}
	/* Probe the h/w */
	ret = FUNC4(smmu);
	if (ret)
		return ret;

	/* Initialise in-memory data structures */
	ret = FUNC6(smmu);
	if (ret)
		return ret;

	/* Record our private device structure */
	FUNC19(pdev, smmu);

	/* Reset the device */
	ret = FUNC5(smmu, bypass);
	if (ret)
		return ret;

	/* And we're up. Go go go! */
	ret = FUNC15(&smmu->iommu, dev, NULL,
				     "smmu3.%pa", &ioaddr);
	if (ret)
		return ret;

	FUNC14(&smmu->iommu, &arm_smmu_ops);
	FUNC13(&smmu->iommu, dev->fwnode);

	ret = FUNC12(&smmu->iommu);
	if (ret) {
		FUNC9(dev, "Failed to register iommu\n");
		return ret;
	}

#ifdef CONFIG_PCI
	if (pci_bus_type.iommu_ops != &arm_smmu_ops) {
		pci_request_acs();
		ret = bus_set_iommu(&pci_bus_type, &arm_smmu_ops);
		if (ret)
			return ret;
	}
#endif
#ifdef CONFIG_ARM_AMBA
	if (amba_bustype.iommu_ops != &arm_smmu_ops) {
		ret = bus_set_iommu(&amba_bustype, &arm_smmu_ops);
		if (ret)
			return ret;
	}
#endif
	if (platform_bus_type.iommu_ops != &arm_smmu_ops) {
		ret = FUNC8(&platform_bus_type, &arm_smmu_ops);
		if (ret)
			return ret;
	}
	return 0;
}