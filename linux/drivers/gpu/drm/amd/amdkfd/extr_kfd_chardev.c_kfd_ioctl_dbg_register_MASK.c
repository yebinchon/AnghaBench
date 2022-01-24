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
struct kfd_process_device {int dummy; } ;
struct kfd_process {int /*<<< orphan*/  mutex; } ;
struct kfd_ioctl_dbg_register_args {int /*<<< orphan*/  gpu_id; } ;
struct kfd_dev {struct kfd_dbgmgr* dbgmgr; TYPE_1__* device_info; } ;
struct kfd_dbgmgr {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {scalar_t__ asic_family; } ;

/* Variables and functions */
 scalar_t__ CHIP_CARRIZO ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct kfd_process_device*) ; 
 long FUNC1 (struct kfd_process_device*) ; 
 struct kfd_process_device* FUNC2 (struct kfd_dev*,struct kfd_process*) ; 
 int FUNC3 (struct kfd_dbgmgr**,struct kfd_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct kfd_dbgmgr*) ; 
 long FUNC5 (struct kfd_dbgmgr*,struct kfd_process*) ; 
 struct kfd_dev* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static int FUNC11(struct file *filep,
				struct kfd_process *p, void *data)
{
	struct kfd_ioctl_dbg_register_args *args = data;
	struct kfd_dev *dev;
	struct kfd_dbgmgr *dbgmgr_ptr;
	struct kfd_process_device *pdd;
	bool create_ok;
	long status = 0;

	dev = FUNC6(args->gpu_id);
	if (!dev)
		return -EINVAL;

	if (dev->device_info->asic_family == CHIP_CARRIZO) {
		FUNC10("kfd_ioctl_dbg_register not supported on CZ\n");
		return -EINVAL;
	}

	FUNC8(&p->mutex);
	FUNC8(FUNC7());

	/*
	 * make sure that we have pdd, if this the first queue created for
	 * this process
	 */
	pdd = FUNC2(dev, p);
	if (FUNC0(pdd)) {
		status = FUNC1(pdd);
		goto out;
	}

	if (!dev->dbgmgr) {
		/* In case of a legal call, we have no dbgmgr yet */
		create_ok = FUNC3(&dbgmgr_ptr, dev);
		if (create_ok) {
			status = FUNC5(dbgmgr_ptr, p);
			if (status != 0)
				FUNC4(dbgmgr_ptr);
			else
				dev->dbgmgr = dbgmgr_ptr;
		}
	} else {
		FUNC10("debugger already registered\n");
		status = -EINVAL;
	}

out:
	FUNC9(FUNC7());
	FUNC9(&p->mutex);

	return status;
}