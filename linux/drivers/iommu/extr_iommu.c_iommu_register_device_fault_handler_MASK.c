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
typedef  int /*<<< orphan*/  iommu_dev_fault_handler_t ;
struct TYPE_2__ {int /*<<< orphan*/  faults; int /*<<< orphan*/  lock; void* data; int /*<<< orphan*/  handler; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 TYPE_1__* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 

int FUNC7(struct device *dev,
					iommu_dev_fault_handler_t handler,
					void *data)
{
	struct iommu_param *param = dev->iommu_param;
	int ret = 0;

	if (!param)
		return -EINVAL;

	FUNC4(&param->lock);
	/* Only allow one fault handler registered for each device */
	if (param->fault_param) {
		ret = -EBUSY;
		goto done_unlock;
	}

	FUNC1(dev);
	param->fault_param = FUNC2(sizeof(*param->fault_param), GFP_KERNEL);
	if (!param->fault_param) {
		FUNC6(dev);
		ret = -ENOMEM;
		goto done_unlock;
	}
	param->fault_param->handler = handler;
	param->fault_param->data = data;
	FUNC3(&param->fault_param->lock);
	FUNC0(&param->fault_param->faults);

done_unlock:
	FUNC5(&param->lock);

	return ret;
}