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
struct list_head {int dummy; } ;
struct i2c_board_info {int /*<<< orphan*/  addr; } ;
struct i2c_acpi_lookup {int /*<<< orphan*/  device_handle; struct i2c_board_info* info; } ;
struct TYPE_2__ {int /*<<< orphan*/  present; } ;
struct acpi_device {TYPE_1__ status; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
 scalar_t__ FUNC1 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct list_head*) ; 
 int FUNC3 (struct acpi_device*,struct list_head*,int /*<<< orphan*/ ,struct i2c_acpi_lookup*) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_device*) ; 
 scalar_t__ FUNC5 (struct acpi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  i2c_acpi_fill_info ; 
 int /*<<< orphan*/  i2c_acpi_ignored_device_ids ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_board_info*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct acpi_device *adev,
			      struct i2c_acpi_lookup *lookup)
{
	struct i2c_board_info *info = lookup->info;
	struct list_head resource_list;
	int ret;

	if (FUNC1(adev) || !adev->status.present)
		return -EINVAL;

	if (FUNC5(adev, i2c_acpi_ignored_device_ids) == 0)
		return -ENODEV;

	FUNC6(info, 0, sizeof(*info));
	lookup->device_handle = FUNC4(adev);

	/* Look up for I2cSerialBus resource */
	FUNC0(&resource_list);
	ret = FUNC3(adev, &resource_list,
				     i2c_acpi_fill_info, lookup);
	FUNC2(&resource_list);

	if (ret < 0 || !info->addr)
		return -EINVAL;

	return 0;
}