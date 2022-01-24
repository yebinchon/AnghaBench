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
struct adf_accel_dev {struct adf_cfg_device_data* cfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct adf_cfg_device_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct adf_accel_dev *accel_dev)
{
	struct adf_cfg_device_data *dev_cfg_data = accel_dev->cfg;

	if (!dev_cfg_data)
		return;

	FUNC2(&dev_cfg_data->lock);
	FUNC0(&dev_cfg_data->sec_list);
	FUNC4(&dev_cfg_data->lock);
	FUNC1(dev_cfg_data->debug);
	FUNC3(dev_cfg_data);
	accel_dev->cfg = NULL;
}