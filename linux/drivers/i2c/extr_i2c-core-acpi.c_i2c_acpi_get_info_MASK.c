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
struct i2c_board_info {int /*<<< orphan*/  type; int /*<<< orphan*/  fwnode; } ;
struct i2c_adapter {int /*<<< orphan*/  dev; } ;
struct i2c_acpi_lookup {int index; scalar_t__ adapter_handle; struct i2c_board_info* info; } ;
struct TYPE_2__ {int /*<<< orphan*/  present; } ;
struct acpi_device {int /*<<< orphan*/  dev; TYPE_1__ status; } ;
typedef  int /*<<< orphan*/  lookup ;
typedef  scalar_t__ acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ FUNC1 (scalar_t__,struct acpi_device**) ; 
 scalar_t__ FUNC2 (struct acpi_device*) ; 
 scalar_t__ FUNC3 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct acpi_device*,struct i2c_acpi_lookup*) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_acpi_lookup*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct acpi_device *adev,
			     struct i2c_board_info *info,
			     struct i2c_adapter *adapter,
			     acpi_handle *adapter_handle)
{
	struct i2c_acpi_lookup lookup;
	int ret;

	FUNC8(&lookup, 0, sizeof(lookup));
	lookup.info = info;
	lookup.index = -1;

	if (FUNC3(adev))
		return -EINVAL;

	ret = FUNC7(adev, &lookup);
	if (ret)
		return ret;

	if (adapter) {
		/* The adapter must match the one in I2cSerialBus() connector */
		if (FUNC0(&adapter->dev) != lookup.adapter_handle)
			return -ENODEV;
	} else {
		struct acpi_device *adapter_adev;

		/* The adapter must be present */
		if (FUNC1(lookup.adapter_handle, &adapter_adev))
			return -ENODEV;
		if (FUNC2(adapter_adev) ||
		    !adapter_adev->status.present)
			return -ENODEV;
	}

	info->fwnode = FUNC4(adev);
	if (adapter_handle)
		*adapter_handle = lookup.adapter_handle;

	FUNC5(adev, FUNC6(&adev->dev), info->type,
			  sizeof(info->type));

	return 0;
}