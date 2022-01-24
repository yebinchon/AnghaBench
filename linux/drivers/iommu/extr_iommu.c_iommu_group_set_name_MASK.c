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
struct iommu_group {int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  iommu_group_attr_name ; 
 int FUNC0 (struct iommu_group*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct iommu_group*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,int /*<<< orphan*/ ) ; 

int FUNC4(struct iommu_group *group, const char *name)
{
	int ret;

	if (group->name) {
		FUNC1(group, &iommu_group_attr_name);
		FUNC2(group->name);
		group->name = NULL;
		if (!name)
			return 0;
	}

	group->name = FUNC3(name, GFP_KERNEL);
	if (!group->name)
		return -ENOMEM;

	ret = FUNC0(group, &iommu_group_attr_name);
	if (ret) {
		FUNC2(group->name);
		group->name = NULL;
		return ret;
	}

	return 0;
}