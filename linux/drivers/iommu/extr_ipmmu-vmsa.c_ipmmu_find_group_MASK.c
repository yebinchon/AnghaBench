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
struct ipmmu_vmsa_device {struct iommu_group* group; } ;
struct iommu_group {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iommu_group*) ; 
 struct iommu_group* FUNC1 () ; 
 struct iommu_group* FUNC2 (struct iommu_group*) ; 
 struct ipmmu_vmsa_device* FUNC3 (struct device*) ; 

__attribute__((used)) static struct iommu_group *FUNC4(struct device *dev)
{
	struct ipmmu_vmsa_device *mmu = FUNC3(dev);
	struct iommu_group *group;

	if (mmu->group)
		return FUNC2(mmu->group);

	group = FUNC1();
	if (!FUNC0(group))
		mmu->group = group;

	return group;
}