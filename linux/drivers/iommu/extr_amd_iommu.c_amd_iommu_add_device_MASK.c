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
struct iommu_domain {scalar_t__ type; } ;
struct iommu_dev_data {int passthrough; scalar_t__ iommu_v2; } ;
struct device {int /*<<< orphan*/ * dma_ops; } ;
struct amd_iommu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOTSUPP ; 
 scalar_t__ IOMMU_DOMAIN_IDENTITY ; 
 int /*<<< orphan*/  amd_iommu_dma_ops ; 
 struct amd_iommu** amd_iommu_rlookup_table ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct iommu_dev_data* FUNC3 (struct device*) ; 
 int FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct amd_iommu*) ; 
 struct iommu_domain* FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int FUNC9 (struct device*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 

__attribute__((used)) static int FUNC11(struct device *dev)
{
	struct iommu_dev_data *dev_data;
	struct iommu_domain *domain;
	struct amd_iommu *iommu;
	int ret, devid;

	if (!FUNC1(dev) || FUNC3(dev))
		return 0;

	devid = FUNC4(dev);
	if (devid < 0)
		return devid;

	iommu = amd_iommu_rlookup_table[devid];

	ret = FUNC9(dev);
	if (ret) {
		if (ret != -ENOTSUPP)
			FUNC2(dev, "Failed to initialize - trying to proceed anyway\n");

		FUNC8(dev);
		dev->dma_ops = NULL;
		goto out;
	}
	FUNC5(dev);

	dev_data = FUNC3(dev);

	FUNC0(!dev_data);

	if (dev_data->iommu_v2)
		FUNC10(dev);

	/* Domains are initialized for this device - have a look what we ended up with */
	domain = FUNC7(dev);
	if (domain->type == IOMMU_DOMAIN_IDENTITY)
		dev_data->passthrough = true;
	else
		dev->dma_ops = &amd_iommu_dma_ops;

out:
	FUNC6(iommu);

	return 0;
}