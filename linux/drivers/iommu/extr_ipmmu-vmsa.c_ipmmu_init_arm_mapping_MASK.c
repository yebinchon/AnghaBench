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
struct ipmmu_vmsa_device {struct iommu_group* mapping; struct device* dev; } ;
struct iommu_group {int dummy; } ;
typedef  struct iommu_group dma_iommu_mapping ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct iommu_group*) ; 
 int FUNC1 (struct iommu_group*) ; 
 int /*<<< orphan*/  SZ_1G ; 
 int /*<<< orphan*/  SZ_2G ; 
 int FUNC2 (struct device*,struct iommu_group*) ; 
 struct iommu_group* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iommu_group*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 int FUNC6 (struct iommu_group*,struct device*) ; 
 struct iommu_group* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct iommu_group*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*) ; 
 int /*<<< orphan*/  platform_bus_type ; 
 struct ipmmu_vmsa_device* FUNC10 (struct device*) ; 

__attribute__((used)) static int FUNC11(struct device *dev)
{
	struct ipmmu_vmsa_device *mmu = FUNC10(dev);
	struct iommu_group *group;
	int ret;

	/* Create a device group and add the device to it. */
	group = FUNC7();
	if (FUNC0(group)) {
		FUNC5(dev, "Failed to allocate IOMMU group\n");
		return FUNC1(group);
	}

	ret = FUNC6(group, dev);
	FUNC8(group);

	if (ret < 0) {
		FUNC5(dev, "Failed to add device to IPMMU group\n");
		return ret;
	}

	/*
	 * Create the ARM mapping, used by the ARM DMA mapping core to allocate
	 * VAs. This will allocate a corresponding IOMMU domain.
	 *
	 * TODO:
	 * - Create one mapping per context (TLB).
	 * - Make the mapping size configurable ? We currently use a 2GB mapping
	 *   at a 1GB offset to ensure that NULL VAs will fault.
	 */
	if (!mmu->mapping) {
		struct dma_iommu_mapping *mapping;

		mapping = FUNC3(&platform_bus_type,
						   SZ_1G, SZ_2G);
		if (FUNC0(mapping)) {
			FUNC5(mmu->dev, "failed to create ARM IOMMU mapping\n");
			ret = FUNC1(mapping);
			goto error;
		}

		mmu->mapping = mapping;
	}

	/* Attach the ARM VA mapping to the device. */
	ret = FUNC2(dev, mmu->mapping);
	if (ret < 0) {
		FUNC5(dev, "Failed to attach device to VA mapping\n");
		goto error;
	}

	return 0;

error:
	FUNC9(dev);
	if (mmu->mapping)
		FUNC4(mmu->mapping);

	return ret;
}