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
struct file {int dummy; } ;
struct adf_user_cfg_ctl_data {int /*<<< orphan*/  device_id; } ;
struct adf_accel_dev {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADF_STATUS_CONFIGURED ; 
 int EFAULT ; 
 scalar_t__ FUNC0 (struct adf_accel_dev*,struct adf_user_cfg_ctl_data*) ; 
 int FUNC1 (struct adf_user_cfg_ctl_data**,unsigned long) ; 
 scalar_t__ FUNC2 (struct adf_accel_dev*) ; 
 struct adf_accel_dev* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct adf_user_cfg_ctl_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct file *fp, unsigned int cmd,
				    unsigned long arg)
{
	int ret;
	struct adf_user_cfg_ctl_data *ctl_data;
	struct adf_accel_dev *accel_dev;

	ret = FUNC1(&ctl_data, arg);
	if (ret)
		return ret;

	accel_dev = FUNC3(ctl_data->device_id);
	if (!accel_dev) {
		ret = -EFAULT;
		goto out;
	}

	if (FUNC2(accel_dev)) {
		ret = -EFAULT;
		goto out;
	}

	if (FUNC0(accel_dev, ctl_data)) {
		ret = -EFAULT;
		goto out;
	}
	FUNC5(ADF_STATUS_CONFIGURED, &accel_dev->status);
out:
	FUNC4(ctl_data);
	return ret;
}