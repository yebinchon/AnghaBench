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
struct device {int dummy; } ;

/* Variables and functions */
 struct msm_iommu_dev* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  msm_iommu_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct device *dev)
{
	struct msm_iommu_dev *iommu;
	unsigned long flags;

	FUNC3(&msm_iommu_lock, flags);
	iommu = FUNC0(dev);
	FUNC4(&msm_iommu_lock, flags);

	if (iommu)
		FUNC1(&iommu->iommu, dev);

	FUNC2(dev);
}