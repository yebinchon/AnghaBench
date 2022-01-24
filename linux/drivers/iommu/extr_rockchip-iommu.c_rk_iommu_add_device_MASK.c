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
struct rk_iommudata {int /*<<< orphan*/  link; } ;
struct rk_iommu {int /*<<< orphan*/  dev; int /*<<< orphan*/  iommu; } ;
struct iommu_group {int dummy; } ;
struct TYPE_2__ {struct rk_iommudata* iommu; } ;
struct device {TYPE_1__ archdata; } ;

/* Variables and functions */
 int DL_FLAG_PM_RUNTIME ; 
 int DL_FLAG_STATELESS ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (struct iommu_group*) ; 
 int FUNC1 (struct iommu_group*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct device*) ; 
 struct iommu_group* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct iommu_group*) ; 
 struct rk_iommu* FUNC6 (struct device*) ; 

__attribute__((used)) static int FUNC7(struct device *dev)
{
	struct iommu_group *group;
	struct rk_iommu *iommu;
	struct rk_iommudata *data;

	data = dev->archdata.iommu;
	if (!data)
		return -ENODEV;

	iommu = FUNC6(dev);

	group = FUNC4(dev);
	if (FUNC0(group))
		return FUNC1(group);
	FUNC5(group);

	FUNC3(&iommu->iommu, dev);
	data->link = FUNC2(dev, iommu->dev,
				     DL_FLAG_STATELESS | DL_FLAG_PM_RUNTIME);

	return 0;
}