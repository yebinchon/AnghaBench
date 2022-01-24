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
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct i2c_board_info {scalar_t__ dev_name; } ;
struct i2c_adapter {int dummy; } ;
struct acpi_device {int dummy; } ;

/* Variables and functions */
 struct acpi_device* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*) ; 

__attribute__((used)) static void FUNC5(struct i2c_adapter *adap,
			     struct i2c_client *client,
			     struct i2c_board_info const *info)
{
	struct acpi_device *adev = FUNC0(&client->dev);

	if (info && info->dev_name) {
		FUNC2(&client->dev, "i2c-%s", info->dev_name);
		return;
	}

	if (adev) {
		FUNC2(&client->dev, "i2c-%s", FUNC1(adev));
		return;
	}

	FUNC2(&client->dev, "%d-%04x", FUNC3(adap),
		     FUNC4(client));
}