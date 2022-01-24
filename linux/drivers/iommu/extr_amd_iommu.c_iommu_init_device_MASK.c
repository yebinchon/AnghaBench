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
struct iommu_dev_data {size_t devid; int /*<<< orphan*/  iommu_v2; int /*<<< orphan*/  alias; } ;
struct TYPE_2__ {struct iommu_dev_data* iommu; } ;
struct device {TYPE_1__ archdata; } ;
struct amd_iommu {int /*<<< orphan*/  iommu; int /*<<< orphan*/  is_iommu_v2; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  amd_iommu_force_isolation ; 
 struct amd_iommu** amd_iommu_rlookup_table ; 
 scalar_t__ FUNC0 (struct device*) ; 
 struct iommu_dev_data* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int FUNC3 (struct device*) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct device*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 

__attribute__((used)) static int FUNC8(struct device *dev)
{
	struct iommu_dev_data *dev_data;
	struct amd_iommu *iommu;
	int devid;

	if (dev->archdata.iommu)
		return 0;

	devid = FUNC3(dev);
	if (devid < 0)
		return devid;

	iommu = amd_iommu_rlookup_table[devid];

	dev_data = FUNC1(devid);
	if (!dev_data)
		return -ENOMEM;

	dev_data->alias = FUNC2(dev);

	/*
	 * By default we use passthrough mode for IOMMUv2 capable device.
	 * But if amd_iommu=force_isolation is set (e.g. to debug DMA to
	 * invalid address), we ignore the capability for the device so
	 * it'll be forced to go into translation mode.
	 */
	if ((FUNC4() || !amd_iommu_force_isolation) &&
	    FUNC0(dev) && FUNC6(FUNC7(dev))) {
		struct amd_iommu *iommu;

		iommu = amd_iommu_rlookup_table[dev_data->devid];
		dev_data->iommu_v2 = iommu->is_iommu_v2;
	}

	dev->archdata.iommu = dev_data;

	FUNC5(&iommu->iommu, dev);

	return 0;
}