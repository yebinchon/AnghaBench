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
 struct iommu_group* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (struct device*) ; 
 struct iommu_group* FUNC2 (struct device*) ; 

__attribute__((used)) static struct iommu_group *FUNC3(struct device *dev)
{
	if (FUNC1(dev))
		return FUNC2(dev);

	return FUNC0(dev);
}