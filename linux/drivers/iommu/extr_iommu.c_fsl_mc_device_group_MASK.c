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
struct iommu_group {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct device* FUNC0 (struct device*) ; 
 struct iommu_group* FUNC1 () ; 
 struct iommu_group* FUNC2 (struct device*) ; 

struct iommu_group *FUNC3(struct device *dev)
{
	struct device *cont_dev = FUNC0(dev);
	struct iommu_group *group;

	group = FUNC2(cont_dev);
	if (!group)
		group = FUNC1();
	return group;
}