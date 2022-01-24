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
struct adf_user_cfg_ctl_data {scalar_t__ device_id; } ;

/* Variables and functions */
 scalar_t__ ADF_CFG_ALL_DEVICES ; 
 int ENODEV ; 
 int FUNC0 (struct adf_user_cfg_ctl_data**,unsigned long) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct adf_user_cfg_ctl_data*) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static int FUNC7(struct file *fp, unsigned int cmd,
				  unsigned long arg)
{
	int ret;
	struct adf_user_cfg_ctl_data *ctl_data;

	ret = FUNC0(&ctl_data, arg);
	if (ret)
		return ret;

	if (FUNC3(ctl_data->device_id)) {
		FUNC5("QAT: Device %d not found\n", ctl_data->device_id);
		ret = -ENODEV;
		goto out;
	}

	ret = FUNC1(ctl_data->device_id);
	if (ret)
		goto out;

	if (ctl_data->device_id == ADF_CFG_ALL_DEVICES)
		FUNC6("QAT: Stopping all acceleration devices.\n");
	else
		FUNC6("QAT: Stopping acceleration device qat_dev%d.\n",
			ctl_data->device_id);

	FUNC2(ctl_data->device_id);

out:
	FUNC4(ctl_data);
	return ret;
}