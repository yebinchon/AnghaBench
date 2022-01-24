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
struct mm_struct {int dummy; } ;
struct iommu_sva {int dummy; } ;
struct iommu_ops {struct iommu_sva* (* sva_bind ) (struct device*,struct mm_struct*,void*) ;} ;
struct iommu_group {int /*<<< orphan*/  mutex; } ;
struct device {TYPE_1__* bus; } ;
struct TYPE_2__ {struct iommu_ops* iommu_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENODEV ; 
 struct iommu_sva* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct iommu_group*) ; 
 struct iommu_group* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct iommu_group*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct iommu_sva* FUNC6 (struct device*,struct mm_struct*,void*) ; 

struct iommu_sva *
FUNC7(struct device *dev, struct mm_struct *mm, void *drvdata)
{
	struct iommu_group *group;
	struct iommu_sva *handle = FUNC0(-EINVAL);
	const struct iommu_ops *ops = dev->bus->iommu_ops;

	if (!ops || !ops->sva_bind)
		return FUNC0(-ENODEV);

	group = FUNC2(dev);
	if (!group)
		return FUNC0(-ENODEV);

	/* Ensure device count and domain don't change while we're binding */
	FUNC4(&group->mutex);

	/*
	 * To keep things simple, SVA currently doesn't support IOMMU groups
	 * with more than one device. Existing SVA-capable systems are not
	 * affected by the problems that required IOMMU groups (lack of ACS
	 * isolation, device ID aliasing and other hardware issues).
	 */
	if (FUNC1(group) != 1)
		goto out_unlock;

	handle = ops->sva_bind(dev, mm, drvdata);

out_unlock:
	FUNC5(&group->mutex);
	FUNC3(group);

	return handle;
}