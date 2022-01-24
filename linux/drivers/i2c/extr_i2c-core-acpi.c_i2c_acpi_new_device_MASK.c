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
struct i2c_client {int dummy; } ;
struct i2c_board_info {int /*<<< orphan*/  addr; } ;
struct i2c_adapter {int dummy; } ;
struct i2c_acpi_lookup {int index; int /*<<< orphan*/  adapter_handle; int /*<<< orphan*/  device_handle; struct i2c_board_info* info; } ;
struct device {int dummy; } ;
struct acpi_device {int dummy; } ;
typedef  int /*<<< orphan*/  lookup ;

/* Variables and functions */
 struct acpi_device* FUNC0 (struct device*) ; 
 int EADDRNOTAVAIL ; 
 int EINVAL ; 
 int ENODEV ; 
 int EPROBE_DEFER ; 
 struct i2c_client* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct acpi_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct i2c_acpi_lookup*) ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_device*) ; 
 int /*<<< orphan*/  i2c_acpi_fill_info ; 
 struct i2c_adapter* FUNC6 (int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC7 (struct i2c_adapter*,struct i2c_board_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_acpi_lookup*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  resource_list ; 

struct i2c_client *FUNC9(struct device *dev, int index,
				       struct i2c_board_info *info)
{
	struct i2c_acpi_lookup lookup;
	struct i2c_adapter *adapter;
	struct i2c_client *client;
	struct acpi_device *adev;
	FUNC2(resource_list);
	int ret;

	adev = FUNC0(dev);
	if (!adev)
		return FUNC1(-EINVAL);

	FUNC8(&lookup, 0, sizeof(lookup));
	lookup.info = info;
	lookup.device_handle = FUNC5(adev);
	lookup.index = index;

	ret = FUNC4(adev, &resource_list,
				     i2c_acpi_fill_info, &lookup);
	if (ret < 0)
		return FUNC1(ret);

	FUNC3(&resource_list);

	if (!info->addr)
		return FUNC1(-EADDRNOTAVAIL);

	adapter = FUNC6(lookup.adapter_handle);
	if (!adapter)
		return FUNC1(-EPROBE_DEFER);

	client = FUNC7(adapter, info);
	if (!client)
		return FUNC1(-ENODEV);

	return client;
}