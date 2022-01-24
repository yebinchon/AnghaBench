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
struct msm_iommu_dev {int /*<<< orphan*/  iommu; } ;
struct iommu_group {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (struct iommu_group*) ; 
 int FUNC1 (struct iommu_group*) ; 
 struct msm_iommu_dev* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct device*) ; 
 struct iommu_group* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct iommu_group*) ; 
 int /*<<< orphan*/  msm_iommu_lock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC8(struct device *dev)
{
	struct msm_iommu_dev *iommu;
	struct iommu_group *group;
	unsigned long flags;

	FUNC6(&msm_iommu_lock, flags);
	iommu = FUNC2(dev);
	FUNC7(&msm_iommu_lock, flags);

	if (iommu)
		FUNC3(&iommu->iommu, dev);
	else
		return -ENODEV;

	group = FUNC4(dev);
	if (FUNC0(group))
		return FUNC1(group);

	FUNC5(group);

	return 0;
}