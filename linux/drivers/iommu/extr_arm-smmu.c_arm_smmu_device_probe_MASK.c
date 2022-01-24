#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct device {scalar_t__ pm_domain; int /*<<< orphan*/  fwnode; scalar_t__ of_node; } ;
struct platform_device {struct device dev; } ;
struct arm_smmu_device {int num_global_irqs; int* irqs; int num_clks; scalar_t__ version; int /*<<< orphan*/  iommu; struct device* dev; int /*<<< orphan*/  num_context_banks; int /*<<< orphan*/  num_context_irqs; int /*<<< orphan*/  clks; int /*<<< orphan*/  numpage; struct arm_smmu_device* base; } ;
typedef  int /*<<< orphan*/  resource_size_t ;

/* Variables and functions */
 scalar_t__ ARM_SMMU_V2 ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC0 (struct arm_smmu_device*) ; 
 int FUNC1 (struct arm_smmu_device*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (struct platform_device*,struct arm_smmu_device*) ; 
 int FUNC4 (struct arm_smmu_device*) ; 
 int FUNC5 (struct platform_device*,struct arm_smmu_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct arm_smmu_device*) ; 
 int /*<<< orphan*/  arm_smmu_global_fault ; 
 struct arm_smmu_device* FUNC7 (struct arm_smmu_device*) ; 
 int /*<<< orphan*/  arm_smmu_ops ; 
 int /*<<< orphan*/  FUNC8 (struct arm_smmu_device*) ; 
 int FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct device*,char*,...) ; 
 int FUNC11 (struct device*,int /*<<< orphan*/ *) ; 
 struct arm_smmu_device* FUNC12 (struct device*,struct resource*) ; 
 int* FUNC13 (struct device*,int,int,int /*<<< orphan*/ ) ; 
 struct arm_smmu_device* FUNC14 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct arm_smmu_device*) ; 
 int FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC19 (int /*<<< orphan*/ *,struct device*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int FUNC20 (struct platform_device*,int) ; 
 struct resource* FUNC21 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (struct platform_device*,struct arm_smmu_device*) ; 
 int /*<<< orphan*/  FUNC23 (struct device*) ; 
 int /*<<< orphan*/  FUNC24 (struct device*) ; 
 int /*<<< orphan*/  FUNC25 (struct resource*) ; 
 int /*<<< orphan*/  using_legacy_binding ; 

__attribute__((used)) static int FUNC26(struct platform_device *pdev)
{
	struct resource *res;
	resource_size_t ioaddr;
	struct arm_smmu_device *smmu;
	struct device *dev = &pdev->dev;
	int num_irqs, i, err;

	smmu = FUNC14(dev, sizeof(*smmu), GFP_KERNEL);
	if (!smmu) {
		FUNC10(dev, "failed to allocate arm_smmu_device\n");
		return -ENOMEM;
	}
	smmu->dev = dev;

	if (dev->of_node)
		err = FUNC5(pdev, smmu);
	else
		err = FUNC3(pdev, smmu);

	if (err)
		return err;

	smmu = FUNC7(smmu);
	if (FUNC0(smmu))
		return FUNC1(smmu);

	res = FUNC21(pdev, IORESOURCE_MEM, 0);
	ioaddr = res->start;
	smmu->base = FUNC12(dev, res);
	if (FUNC0(smmu->base))
		return FUNC1(smmu->base);
	/*
	 * The resource size should effectively match the value of SMMU_TOP;
	 * stash that temporarily until we know PAGESIZE to validate it with.
	 */
	smmu->numpage = FUNC25(res);

	num_irqs = 0;
	while ((res = FUNC21(pdev, IORESOURCE_IRQ, num_irqs))) {
		num_irqs++;
		if (num_irqs > smmu->num_global_irqs)
			smmu->num_context_irqs++;
	}

	if (!smmu->num_context_irqs) {
		FUNC10(dev, "found %d interrupts but expected at least %d\n",
			num_irqs, smmu->num_global_irqs + 1);
		return -ENODEV;
	}

	smmu->irqs = FUNC13(dev, num_irqs, sizeof(*smmu->irqs),
				  GFP_KERNEL);
	if (!smmu->irqs) {
		FUNC10(dev, "failed to allocate %d irqs\n", num_irqs);
		return -ENOMEM;
	}

	for (i = 0; i < num_irqs; ++i) {
		int irq = FUNC20(pdev, i);

		if (irq < 0) {
			FUNC10(dev, "failed to get irq index %d\n", i);
			return -ENODEV;
		}
		smmu->irqs[i] = irq;
	}

	err = FUNC11(dev, &smmu->clks);
	if (err < 0) {
		FUNC10(dev, "failed to get clocks %d\n", err);
		return err;
	}
	smmu->num_clks = err;

	err = FUNC9(smmu->num_clks, smmu->clks);
	if (err)
		return err;

	err = FUNC4(smmu);
	if (err)
		return err;

	if (smmu->version == ARM_SMMU_V2) {
		if (smmu->num_context_banks > smmu->num_context_irqs) {
			FUNC10(dev,
			      "found only %d context irq(s) but %d required\n",
			      smmu->num_context_irqs, smmu->num_context_banks);
			return -ENODEV;
		}

		/* Ignore superfluous interrupts */
		smmu->num_context_irqs = smmu->num_context_banks;
	}

	for (i = 0; i < smmu->num_global_irqs; ++i) {
		err = FUNC15(smmu->dev, smmu->irqs[i],
				       arm_smmu_global_fault,
				       IRQF_SHARED,
				       "arm-smmu global fault",
				       smmu);
		if (err) {
			FUNC10(dev, "failed to request global IRQ %d (%u)\n",
				i, smmu->irqs[i]);
			return err;
		}
	}

	err = FUNC19(&smmu->iommu, smmu->dev, NULL,
				     "smmu.%pa", &ioaddr);
	if (err) {
		FUNC10(dev, "Failed to register iommu in sysfs\n");
		return err;
	}

	FUNC18(&smmu->iommu, &arm_smmu_ops);
	FUNC17(&smmu->iommu, dev->fwnode);

	err = FUNC16(&smmu->iommu);
	if (err) {
		FUNC10(dev, "Failed to register iommu\n");
		return err;
	}

	FUNC22(pdev, smmu);
	FUNC6(smmu);
	FUNC8(smmu);

	/*
	 * We want to avoid touching dev->power.lock in fastpaths unless
	 * it's really going to do something useful - pm_runtime_enabled()
	 * can serve as an ideal proxy for that decision. So, conditionally
	 * enable pm_runtime.
	 */
	if (dev->pm_domain) {
		FUNC24(dev);
		FUNC23(dev);
	}

	/*
	 * For ACPI and generic DT bindings, an SMMU will be probed before
	 * any device which might need it, so we want the bus ops in place
	 * ready to handle default domain setup as soon as any SMMU exists.
	 */
	if (!using_legacy_binding)
		FUNC2();

	return 0;
}