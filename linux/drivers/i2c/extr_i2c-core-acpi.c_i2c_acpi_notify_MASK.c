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
struct notifier_block {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct i2c_board_info {int dummy; } ;
struct i2c_adapter {int dummy; } ;
struct acpi_device {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
#define  ACPI_RECONFIG_DEVICE_ADD 129 
#define  ACPI_RECONFIG_DEVICE_REMOVE 128 
 int NOTIFY_OK ; 
 int /*<<< orphan*/  FUNC0 (struct acpi_device*) ; 
 struct i2c_adapter* FUNC1 (int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC2 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_device*,struct i2c_board_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_adapter*,struct acpi_device*,struct i2c_board_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct notifier_block *nb, unsigned long value,
			   void *arg)
{
	struct acpi_device *adev = arg;
	struct i2c_board_info info;
	acpi_handle adapter_handle;
	struct i2c_adapter *adapter;
	struct i2c_client *client;

	switch (value) {
	case ACPI_RECONFIG_DEVICE_ADD:
		if (FUNC3(adev, &info, NULL, &adapter_handle))
			break;

		adapter = FUNC1(adapter_handle);
		if (!adapter)
			break;

		FUNC4(adapter, adev, &info);
		break;
	case ACPI_RECONFIG_DEVICE_REMOVE:
		if (!FUNC0(adev))
			break;

		client = FUNC2(adev);
		if (!client)
			break;

		FUNC5(client);
		FUNC6(&client->dev);
		break;
	}

	return NOTIFY_OK;
}