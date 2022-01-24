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
struct adf_hw_device_data {int /*<<< orphan*/  fw_name; } ;
struct adf_fw_loader_data {int /*<<< orphan*/ * fw_loader; int /*<<< orphan*/ * mmp_fw; int /*<<< orphan*/ * uof_fw; } ;
struct adf_accel_dev {struct adf_hw_device_data* hw_device; struct adf_fw_loader_data* fw_loader; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct adf_accel_dev *accel_dev)
{
	struct adf_fw_loader_data *loader_data = accel_dev->fw_loader;
	struct adf_hw_device_data *hw_device = accel_dev->hw_device;

	if (!hw_device->fw_name)
		return;

	FUNC1(loader_data->fw_loader);
	FUNC0(loader_data->fw_loader);
	FUNC2(loader_data->uof_fw);
	FUNC2(loader_data->mmp_fw);
	loader_data->uof_fw = NULL;
	loader_data->mmp_fw = NULL;
	loader_data->fw_loader = NULL;
}