#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct iommu_device {TYPE_1__* dev; } ;
struct device {int /*<<< orphan*/  kobj; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (struct iommu_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

int FUNC5(struct iommu_device *iommu, struct device *link)
{
	int ret;

	if (!iommu || FUNC0(iommu))
		return -ENODEV;

	ret = FUNC2(&iommu->dev->kobj, "devices",
				      &link->kobj, FUNC1(link));
	if (ret)
		return ret;

	ret = FUNC3(&link->kobj, &iommu->dev->kobj, "iommu");
	if (ret)
		FUNC4(&iommu->dev->kobj, "devices",
					     FUNC1(link));

	return ret;
}