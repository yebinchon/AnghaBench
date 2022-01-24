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
struct iommu_group {struct iommu_domain* domain; } ;
struct iommu_domain {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct iommu_group* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct iommu_group*) ; 

struct iommu_domain *FUNC2(struct device *dev)
{
	struct iommu_domain *domain;
	struct iommu_group *group;

	group = FUNC0(dev);
	if (!group)
		return NULL;

	domain = group->domain;

	FUNC1(group);

	return domain;
}