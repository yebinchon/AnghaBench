#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  kset; } ;
struct iommu_group {int id; TYPE_1__ kobj; int /*<<< orphan*/  devices_kobj; int /*<<< orphan*/  notifier; int /*<<< orphan*/  devices; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int ENOMEM ; 
 struct iommu_group* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  iommu_group_attr_reserved_regions ; 
 int /*<<< orphan*/  iommu_group_attr_type ; 
 int FUNC5 (struct iommu_group*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  iommu_group_ida ; 
 int /*<<< orphan*/  iommu_group_kset ; 
 int /*<<< orphan*/  iommu_group_ktype ; 
 int /*<<< orphan*/  FUNC6 (struct iommu_group*) ; 
 int /*<<< orphan*/  FUNC7 (char*,TYPE_1__*) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 struct iommu_group* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 

struct iommu_group *FUNC13(void)
{
	struct iommu_group *group;
	int ret;

	group = FUNC10(sizeof(*group), GFP_KERNEL);
	if (!group)
		return FUNC1(-ENOMEM);

	group->kobj.kset = iommu_group_kset;
	FUNC11(&group->mutex);
	FUNC2(&group->devices);
	FUNC0(&group->notifier);

	ret = FUNC3(&iommu_group_ida, 0, 0, GFP_KERNEL);
	if (ret < 0) {
		FUNC6(group);
		return FUNC1(ret);
	}
	group->id = ret;

	ret = FUNC8(&group->kobj, &iommu_group_ktype,
				   NULL, "%d", group->id);
	if (ret) {
		FUNC4(&iommu_group_ida, group->id);
		FUNC6(group);
		return FUNC1(ret);
	}

	group->devices_kobj = FUNC7("devices", &group->kobj);
	if (!group->devices_kobj) {
		FUNC9(&group->kobj); /* triggers .release & free */
		return FUNC1(-ENOMEM);
	}

	/*
	 * The devices_kobj holds a reference on the group kobject, so
	 * as long as that exists so will the group.  We can therefore
	 * use the devices_kobj for reference counting.
	 */
	FUNC9(&group->kobj);

	ret = FUNC5(group,
				      &iommu_group_attr_reserved_regions);
	if (ret)
		return FUNC1(ret);

	ret = FUNC5(group, &iommu_group_attr_type);
	if (ret)
		return FUNC1(ret);

	FUNC12("Allocated group %d\n", group->id);

	return group;
}