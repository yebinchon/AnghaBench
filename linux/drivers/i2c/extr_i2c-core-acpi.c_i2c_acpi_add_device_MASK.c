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
typedef  int /*<<< orphan*/  u32 ;
struct i2c_board_info {int dummy; } ;
struct i2c_adapter {int dummy; } ;
struct acpi_device {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  AE_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct acpi_device**) ; 
 scalar_t__ FUNC1 (struct acpi_device*,struct i2c_board_info*,struct i2c_adapter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_adapter*,struct acpi_device*,struct i2c_board_info*) ; 

__attribute__((used)) static acpi_status FUNC3(acpi_handle handle, u32 level,
				       void *data, void **return_value)
{
	struct i2c_adapter *adapter = data;
	struct acpi_device *adev;
	struct i2c_board_info info;

	if (FUNC0(handle, &adev))
		return AE_OK;

	if (FUNC1(adev, &info, adapter, NULL))
		return AE_OK;

	FUNC2(adapter, adev, &info);

	return AE_OK;
}