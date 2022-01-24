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
struct i2c_board_info {int /*<<< orphan*/  flags; scalar_t__ addr; } ;
struct i2c_acpi_lookup {int index; int /*<<< orphan*/  speed; int /*<<< orphan*/  adapter_handle; int /*<<< orphan*/  device_handle; int /*<<< orphan*/  n; struct i2c_board_info* info; } ;
struct TYPE_2__ {int /*<<< orphan*/  string_ptr; } ;
struct acpi_resource_i2c_serialbus {scalar_t__ access_mode; int /*<<< orphan*/  connection_speed; scalar_t__ slave_address; TYPE_1__ resource_source; } ;
struct acpi_resource {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ACPI_I2C_10BIT_MODE ; 
 int /*<<< orphan*/  I2C_CLIENT_TEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_resource*,struct acpi_resource_i2c_serialbus**) ; 

__attribute__((used)) static int FUNC3(struct acpi_resource *ares, void *data)
{
	struct i2c_acpi_lookup *lookup = data;
	struct i2c_board_info *info = lookup->info;
	struct acpi_resource_i2c_serialbus *sb;
	acpi_status status;

	if (info->addr || !FUNC2(ares, &sb))
		return 1;

	if (lookup->index != -1 && lookup->n++ != lookup->index)
		return 1;

	status = FUNC1(lookup->device_handle,
				 sb->resource_source.string_ptr,
				 &lookup->adapter_handle);
	if (FUNC0(status))
		return 1;

	info->addr = sb->slave_address;
	lookup->speed = sb->connection_speed;
	if (sb->access_mode == ACPI_I2C_10BIT_MODE)
		info->flags |= I2C_CLIENT_TEN;

	return 1;
}