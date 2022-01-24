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
struct kobject {int dummy; } ;
struct iommu_group {struct iommu_group* name; scalar_t__ default_domain; int /*<<< orphan*/  id; int /*<<< orphan*/  iommu_data; int /*<<< orphan*/  (* iommu_data_release ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  iommu_group_ida ; 
 int /*<<< orphan*/  FUNC2 (struct iommu_group*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct iommu_group* FUNC5 (struct kobject*) ; 

__attribute__((used)) static void FUNC6(struct kobject *kobj)
{
	struct iommu_group *group = FUNC5(kobj);

	FUNC3("Releasing group %d\n", group->id);

	if (group->iommu_data_release)
		group->iommu_data_release(group->iommu_data);

	FUNC0(&iommu_group_ida, group->id);

	if (group->default_domain)
		FUNC1(group->default_domain);

	FUNC2(group->name);
	FUNC2(group);
}