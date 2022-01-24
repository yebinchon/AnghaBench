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
struct adf_fw_loader_data {int /*<<< orphan*/  fw_loader; } ;
struct adf_accel_dev {struct adf_fw_loader_data* fw_loader; } ;

/* Variables and functions */
 int EFAULT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct adf_accel_dev *accel_dev, int ae)
{
	struct adf_fw_loader_data *loader_data = accel_dev->fw_loader;

	FUNC1(loader_data->fw_loader);
	if (FUNC0(loader_data->fw_loader))
		return -EFAULT;

	return 0;
}