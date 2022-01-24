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
struct iommu_sva {struct device* dev; } ;
struct iommu_ops {int /*<<< orphan*/  (* sva_unbind ) (struct iommu_sva*) ;} ;
struct iommu_group {int /*<<< orphan*/  mutex; } ;
struct device {TYPE_1__* bus; } ;
struct TYPE_2__ {struct iommu_ops* iommu_ops; } ;

/* Variables and functions */
 struct iommu_group* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct iommu_group*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct iommu_sva*) ; 

void FUNC5(struct iommu_sva *handle)
{
	struct iommu_group *group;
	struct device *dev = handle->dev;
	const struct iommu_ops *ops = dev->bus->iommu_ops;

	if (!ops || !ops->sva_unbind)
		return;

	group = FUNC0(dev);
	if (!group)
		return;

	FUNC2(&group->mutex);
	ops->sva_unbind(handle);
	FUNC3(&group->mutex);

	FUNC1(group);
}