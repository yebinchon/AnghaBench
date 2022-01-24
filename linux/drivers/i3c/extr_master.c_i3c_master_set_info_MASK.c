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
struct TYPE_2__ {struct i3c_dev_desc* cur_master; } ;
struct i3c_master_controller {struct i3c_dev_desc* this; TYPE_1__ bus; scalar_t__ secondary; } ;
struct i3c_device_info {int /*<<< orphan*/  bcr; int /*<<< orphan*/  dyn_addr; } ;
struct i3c_dev_desc {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ I3C_BCR_I3C_MASTER ; 
 scalar_t__ FUNC1 (struct i3c_dev_desc*) ; 
 int FUNC2 (struct i3c_dev_desc*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct i3c_dev_desc* FUNC4 (struct i3c_master_controller*,struct i3c_device_info const*) ; 
 int FUNC5 (struct i3c_master_controller*,struct i3c_dev_desc*) ; 
 int /*<<< orphan*/  FUNC6 (struct i3c_dev_desc*) ; 

int FUNC7(struct i3c_master_controller *master,
			const struct i3c_device_info *info)
{
	struct i3c_dev_desc *i3cdev;
	int ret;

	if (!FUNC3(&master->bus, info->dyn_addr))
		return -EINVAL;

	if (FUNC0(info->bcr) == I3C_BCR_I3C_MASTER &&
	    master->secondary)
		return -EINVAL;

	if (master->this)
		return -EINVAL;

	i3cdev = FUNC4(master, info);
	if (FUNC1(i3cdev))
		return FUNC2(i3cdev);

	master->this = i3cdev;
	master->bus.cur_master = master->this;

	ret = FUNC5(master, i3cdev);
	if (ret)
		goto err_free_dev;

	return 0;

err_free_dev:
	FUNC6(i3cdev);

	return ret;
}