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
struct adf_cfg_device_data {int /*<<< orphan*/  debug; int /*<<< orphan*/  lock; int /*<<< orphan*/  sec_list; } ;
struct adf_accel_dev {int /*<<< orphan*/  debugfs_dir; struct adf_cfg_device_data* cfg; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_IRUSR ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct adf_cfg_device_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct adf_cfg_device_data* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qat_dev_cfg_fops ; 

int FUNC4(struct adf_accel_dev *accel_dev)
{
	struct adf_cfg_device_data *dev_cfg_data;

	dev_cfg_data = FUNC3(sizeof(*dev_cfg_data), GFP_KERNEL);
	if (!dev_cfg_data)
		return -ENOMEM;
	FUNC0(&dev_cfg_data->sec_list);
	FUNC2(&dev_cfg_data->lock);
	accel_dev->cfg = dev_cfg_data;

	/* accel_dev->debugfs_dir should always be non-NULL here */
	dev_cfg_data->debug = FUNC1("dev_cfg", S_IRUSR,
						  accel_dev->debugfs_dir,
						  dev_cfg_data,
						  &qat_dev_cfg_fops);
	return 0;
}