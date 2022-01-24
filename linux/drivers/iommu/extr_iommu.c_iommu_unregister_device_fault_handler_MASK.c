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
struct iommu_param {int /*<<< orphan*/  lock; TYPE_1__* fault_param; } ;
struct device {struct iommu_param* iommu_param; } ;
struct TYPE_2__ {int /*<<< orphan*/  faults; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 

int FUNC5(struct device *dev)
{
	struct iommu_param *param = dev->iommu_param;
	int ret = 0;

	if (!param)
		return -EINVAL;

	FUNC2(&param->lock);

	if (!param->fault_param)
		goto unlock;

	/* we cannot unregister handler if there are pending faults */
	if (!FUNC1(&param->fault_param->faults)) {
		ret = -EBUSY;
		goto unlock;
	}

	FUNC0(param->fault_param);
	param->fault_param = NULL;
	FUNC4(dev);
unlock:
	FUNC3(&param->lock);

	return ret;
}