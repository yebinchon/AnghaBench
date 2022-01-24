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
struct ipmmu_vmsa_device {int /*<<< orphan*/  iommu; } ;
struct iommu_group {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_ARM ; 
 int /*<<< orphan*/  CONFIG_IOMMU_DMA ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct iommu_group*) ; 
 int FUNC2 (struct iommu_group*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct device*) ; 
 struct iommu_group* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct iommu_group*) ; 
 int FUNC6 (struct device*) ; 
 struct ipmmu_vmsa_device* FUNC7 (struct device*) ; 

__attribute__((used)) static int FUNC8(struct device *dev)
{
	struct ipmmu_vmsa_device *mmu = FUNC7(dev);
	struct iommu_group *group;
	int ret;

	/*
	 * Only let through devices that have been verified in xlate()
	 */
	if (!mmu)
		return -ENODEV;

	if (FUNC0(CONFIG_ARM) && !FUNC0(CONFIG_IOMMU_DMA)) {
		ret = FUNC6(dev);
		if (ret)
			return ret;
	} else {
		group = FUNC4(dev);
		if (FUNC1(group))
			return FUNC2(group);

		FUNC5(group);
	}

	FUNC3(&mmu->iommu, dev);
	return 0;
}