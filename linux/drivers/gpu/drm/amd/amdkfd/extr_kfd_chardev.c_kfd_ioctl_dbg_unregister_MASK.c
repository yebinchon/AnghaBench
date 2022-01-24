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
struct kfd_process {int dummy; } ;
struct kfd_ioctl_dbg_unregister_args {int /*<<< orphan*/  gpu_id; } ;
struct kfd_dev {int /*<<< orphan*/ * dbgmgr; TYPE_1__* device_info; } ;
struct file {int dummy; } ;
struct TYPE_2__ {scalar_t__ asic_family; } ;

/* Variables and functions */
 scalar_t__ CHIP_CARRIZO ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 long FUNC1 (int /*<<< orphan*/ *,struct kfd_process*) ; 
 struct kfd_dev* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(struct file *filep,
				struct kfd_process *p, void *data)
{
	struct kfd_ioctl_dbg_unregister_args *args = data;
	struct kfd_dev *dev;
	long status;

	dev = FUNC2(args->gpu_id);
	if (!dev || !dev->dbgmgr)
		return -EINVAL;

	if (dev->device_info->asic_family == CHIP_CARRIZO) {
		FUNC6("kfd_ioctl_dbg_unregister not supported on CZ\n");
		return -EINVAL;
	}

	FUNC4(FUNC3());

	status = FUNC1(dev->dbgmgr, p);
	if (!status) {
		FUNC0(dev->dbgmgr);
		dev->dbgmgr = NULL;
	}

	FUNC5(FUNC3());

	return status;
}