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

/* Variables and functions */
 int FUNC0 (struct iommu_domain*,struct iommu_group*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct iommu_domain *domain, struct iommu_group *group)
{
	int ret;

	FUNC1(&group->mutex);
	ret = FUNC0(domain, group);
	FUNC2(&group->mutex);

	return ret;
}