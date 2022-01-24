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
struct iommu_ops {int (* add_device ) (struct device*) ;} ;
struct device {int /*<<< orphan*/  iommu_group; TYPE_1__* bus; } ;
struct TYPE_2__ {struct iommu_ops* iommu_ops; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int FUNC3 (struct device*) ; 

int FUNC4(struct device *dev)
{
	const struct iommu_ops *ops = dev->bus->iommu_ops;
	int ret;

	FUNC0(dev->iommu_group);
	if (!ops)
		return -EINVAL;

	if (!FUNC2(dev))
		return -ENOMEM;

	ret = ops->add_device(dev);
	if (ret)
		FUNC1(dev);

	return ret;
}