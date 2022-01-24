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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct iommu_domain*,struct iommu_group*) ; 
 int FUNC2 (struct iommu_group*) ; 
 struct iommu_group* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct iommu_group*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct iommu_domain *domain, struct device *dev)
{
	struct iommu_group *group;

	group = FUNC3(dev);
	if (!group)
		return;

	FUNC5(&group->mutex);
	if (FUNC2(group) != 1) {
		FUNC0(1);
		goto out_unlock;
	}

	FUNC1(domain, group);

out_unlock:
	FUNC6(&group->mutex);
	FUNC4(group);
}