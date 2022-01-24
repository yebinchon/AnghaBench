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
 scalar_t__ FUNC0 (struct iommu_group*) ; 
 struct iommu_group* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct iommu_group*) ; 

__attribute__((used)) static void FUNC3(struct device *dev)
{
	struct iommu_group *group;

	group = FUNC1(dev);
	if (FUNC0(group))
		return;

	FUNC2(group);
}