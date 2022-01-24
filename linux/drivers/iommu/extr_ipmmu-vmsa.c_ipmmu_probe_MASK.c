#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct TYPE_14__ {TYPE_1__* of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct ipmmu_vmsa_device {int /*<<< orphan*/  iommu; TYPE_2__* features; int /*<<< orphan*/  ctx; struct ipmmu_vmsa_device* root; int /*<<< orphan*/  num_ctx; int /*<<< orphan*/  base; int /*<<< orphan*/  utlb_ctx; int /*<<< orphan*/  lock; TYPE_3__* dev; } ;
struct TYPE_13__ {int /*<<< orphan*/  has_cache_leaf_nodes; scalar_t__ reserved_context; int /*<<< orphan*/  number_of_contexts; scalar_t__ use_ns_alias_offset; int /*<<< orphan*/  num_utlbs; } ;
struct TYPE_12__ {int /*<<< orphan*/  fwnode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ IM_NS_ALIAS_OFFSET ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IPMMU_CTX_INVALID ; 
 int /*<<< orphan*/  IPMMU_CTX_MAX ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,struct resource*) ; 
 struct ipmmu_vmsa_device* FUNC9 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_3__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ipmmu_vmsa_device*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct ipmmu_vmsa_device*) ; 
 struct ipmmu_vmsa_device* FUNC18 () ; 
 int /*<<< orphan*/  ipmmu_irq ; 
 scalar_t__ FUNC19 (struct ipmmu_vmsa_device*) ; 
 int /*<<< orphan*/  ipmmu_ops ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC22 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_1__*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  platform_bus_type ; 
 int FUNC24 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC25 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct platform_device*,struct ipmmu_vmsa_device*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC29(struct platform_device *pdev)
{
	struct ipmmu_vmsa_device *mmu;
	struct resource *res;
	int irq;
	int ret;

	mmu = FUNC9(&pdev->dev, sizeof(*mmu), GFP_KERNEL);
	if (!mmu) {
		FUNC5(&pdev->dev, "cannot allocate device data\n");
		return -ENOMEM;
	}

	mmu->dev = &pdev->dev;
	FUNC28(&mmu->lock);
	FUNC3(mmu->ctx, IPMMU_CTX_MAX);
	mmu->features = FUNC22(&pdev->dev);
	FUNC20(mmu->utlb_ctx, IPMMU_CTX_INVALID, mmu->features->num_utlbs);
	FUNC11(&pdev->dev, FUNC0(40));

	/* Map I/O memory and request IRQ. */
	res = FUNC25(pdev, IORESOURCE_MEM, 0);
	mmu->base = FUNC8(&pdev->dev, res);
	if (FUNC1(mmu->base))
		return FUNC2(mmu->base);

	/*
	 * The IPMMU has two register banks, for secure and non-secure modes.
	 * The bank mapped at the beginning of the IPMMU address space
	 * corresponds to the running mode of the CPU. When running in secure
	 * mode the non-secure register bank is also available at an offset.
	 *
	 * Secure mode operation isn't clearly documented and is thus currently
	 * not implemented in the driver. Furthermore, preliminary tests of
	 * non-secure operation with the main register bank were not successful.
	 * Offset the registers base unconditionally to point to the non-secure
	 * alias space for now.
	 */
	if (mmu->features->use_ns_alias_offset)
		mmu->base += IM_NS_ALIAS_OFFSET;

	mmu->num_ctx = FUNC21(IPMMU_CTX_MAX, mmu->features->number_of_contexts);

	/*
	 * Determine if this IPMMU instance is a root device by checking for
	 * the lack of has_cache_leaf_nodes flag or renesas,ipmmu-main property.
	 */
	if (!mmu->features->has_cache_leaf_nodes ||
	    !FUNC23(pdev->dev.of_node, "renesas,ipmmu-main", NULL))
		mmu->root = mmu;
	else
		mmu->root = FUNC18();

	/*
	 * Wait until the root device has been registered for sure.
	 */
	if (!mmu->root)
		return -EPROBE_DEFER;

	/* Root devices have mandatory IRQs */
	if (FUNC19(mmu)) {
		irq = FUNC24(pdev, 0);
		if (irq < 0)
			return irq;

		ret = FUNC10(&pdev->dev, irq, ipmmu_irq, 0,
				       FUNC7(&pdev->dev), mmu);
		if (ret < 0) {
			FUNC5(&pdev->dev, "failed to request IRQ %d\n", irq);
			return ret;
		}

		FUNC17(mmu);

		if (mmu->features->reserved_context) {
			FUNC6(&pdev->dev, "IPMMU context 0 is reserved\n");
			FUNC27(0, mmu->ctx);
		}
	}

	/*
	 * Register the IPMMU to the IOMMU subsystem in the following cases:
	 * - R-Car Gen2 IPMMU (all devices registered)
	 * - R-Car Gen3 IPMMU (leaf devices only - skip root IPMMU-MM device)
	 */
	if (!mmu->features->has_cache_leaf_nodes || !FUNC19(mmu)) {
		ret = FUNC15(&mmu->iommu, &pdev->dev, NULL,
					     FUNC7(&pdev->dev));
		if (ret)
			return ret;

		FUNC14(&mmu->iommu, &ipmmu_ops);
		FUNC13(&mmu->iommu,
					&pdev->dev.of_node->fwnode);

		ret = FUNC12(&mmu->iommu);
		if (ret)
			return ret;

#if defined(CONFIG_IOMMU_DMA)
		if (!iommu_present(&platform_bus_type))
			bus_set_iommu(&platform_bus_type, &ipmmu_ops);
#endif
	}

	/*
	 * We can't create the ARM mapping here as it requires the bus to have
	 * an IOMMU, which only happens when bus_set_iommu() is called in
	 * ipmmu_init() after the probe function returns.
	 */

	FUNC26(pdev, mmu);

	return 0;
}