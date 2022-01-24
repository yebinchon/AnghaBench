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
typedef  scalar_t__ u32 ;
struct i2c_board_info {int dummy; } ;
struct i2c_acpi_lookup {scalar_t__ min_speed; int index; struct i2c_board_info* info; int /*<<< orphan*/  search_handle; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  lookup ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  ACPI_ROOT_OBJECT ; 
 int /*<<< orphan*/  ACPI_TYPE_DEVICE ; 
 int /*<<< orphan*/  I2C_ACPI_MAX_SCAN_DEPTH ; 
 scalar_t__ UINT_MAX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct i2c_acpi_lookup*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  i2c_acpi_lookup_speed ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_acpi_lookup*,int /*<<< orphan*/ ,int) ; 

u32 FUNC6(struct device *dev)
{
	struct i2c_acpi_lookup lookup;
	struct i2c_board_info dummy;
	acpi_status status;

	if (!FUNC4(dev))
		return 0;

	FUNC5(&lookup, 0, sizeof(lookup));
	lookup.search_handle = FUNC1(dev);
	lookup.min_speed = UINT_MAX;
	lookup.info = &dummy;
	lookup.index = -1;

	status = FUNC2(ACPI_TYPE_DEVICE, ACPI_ROOT_OBJECT,
				     I2C_ACPI_MAX_SCAN_DEPTH,
				     i2c_acpi_lookup_speed, NULL,
				     &lookup, NULL);

	if (FUNC0(status)) {
		FUNC3(dev, "unable to find I2C bus speed from ACPI\n");
		return 0;
	}

	return lookup.min_speed != UINT_MAX ? lookup.min_speed : 0;
}