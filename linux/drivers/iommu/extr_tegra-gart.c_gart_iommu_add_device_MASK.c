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
struct iommu_group {int dummy; } ;
struct device {int /*<<< orphan*/  iommu_fwspec; } ;
struct TYPE_2__ {int /*<<< orphan*/  iommu; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (struct iommu_group*) ; 
 int FUNC1 (struct iommu_group*) ; 
 TYPE_1__* gart_handle ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct device*) ; 
 struct iommu_group* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct iommu_group*) ; 

__attribute__((used)) static int FUNC5(struct device *dev)
{
	struct iommu_group *group;

	if (!dev->iommu_fwspec)
		return -ENODEV;

	group = FUNC3(dev);
	if (FUNC0(group))
		return FUNC1(group);

	FUNC4(group);

	FUNC2(&gart_handle->iommu, dev);

	return 0;
}