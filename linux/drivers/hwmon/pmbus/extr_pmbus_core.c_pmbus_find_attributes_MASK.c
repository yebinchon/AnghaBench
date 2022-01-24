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
struct pmbus_data {int dummy; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current_attributes ; 
 int FUNC1 (struct i2c_client*,struct pmbus_data*) ; 
 int FUNC2 (struct i2c_client*,struct pmbus_data*) ; 
 int FUNC3 (struct i2c_client*,struct pmbus_data*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  power_attributes ; 
 int /*<<< orphan*/  temp_attributes ; 
 int /*<<< orphan*/  voltage_attributes ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client,
				 struct pmbus_data *data)
{
	int ret;

	/* Voltage sensors */
	ret = FUNC3(client, data, "in", voltage_attributes,
				     FUNC0(voltage_attributes));
	if (ret)
		return ret;

	/* Current sensors */
	ret = FUNC3(client, data, "curr", current_attributes,
				     FUNC0(current_attributes));
	if (ret)
		return ret;

	/* Power sensors */
	ret = FUNC3(client, data, "power", power_attributes,
				     FUNC0(power_attributes));
	if (ret)
		return ret;

	/* Temperature sensors */
	ret = FUNC3(client, data, "temp", temp_attributes,
				     FUNC0(temp_attributes));
	if (ret)
		return ret;

	/* Fans */
	ret = FUNC1(client, data);
	if (ret)
		return ret;

	ret = FUNC2(client, data);
	return ret;
}