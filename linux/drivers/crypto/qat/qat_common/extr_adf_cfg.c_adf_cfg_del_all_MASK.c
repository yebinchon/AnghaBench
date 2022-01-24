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
struct adf_cfg_device_data {int /*<<< orphan*/  lock; int /*<<< orphan*/  sec_list; } ;
struct adf_accel_dev {int /*<<< orphan*/  status; struct adf_cfg_device_data* cfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADF_STATUS_CONFIGURED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct adf_accel_dev *accel_dev)
{
	struct adf_cfg_device_data *dev_cfg_data = accel_dev->cfg;

	FUNC2(&dev_cfg_data->lock);
	FUNC0(&dev_cfg_data->sec_list);
	FUNC3(&dev_cfg_data->lock);
	FUNC1(ADF_STATUS_CONFIGURED, &accel_dev->status);
}