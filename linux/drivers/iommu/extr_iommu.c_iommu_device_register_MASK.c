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
struct iommu_device {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  iommu_device_list ; 
 int /*<<< orphan*/  iommu_device_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct iommu_device *iommu)
{
	FUNC1(&iommu_device_lock);
	FUNC0(&iommu->list, &iommu_device_list);
	FUNC2(&iommu_device_lock);
	return 0;
}