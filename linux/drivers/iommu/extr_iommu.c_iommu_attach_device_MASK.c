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
struct iommu_group {int /*<<< orphan*/  mutex; } ;
struct iommu_domain {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int FUNC0 (struct iommu_domain*,struct iommu_group*) ; 
 int FUNC1 (struct iommu_group*) ; 
 struct iommu_group* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct iommu_group*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct iommu_domain *domain, struct device *dev)
{
	struct iommu_group *group;
	int ret;

	group = FUNC2(dev);
	if (!group)
		return -ENODEV;

	/*
	 * Lock the group to make sure the device-count doesn't
	 * change while we are attaching
	 */
	FUNC4(&group->mutex);
	ret = -EINVAL;
	if (FUNC1(group) != 1)
		goto out_unlock;

	ret = FUNC0(domain, group);

out_unlock:
	FUNC5(&group->mutex);
	FUNC3(group);

	return ret;
}