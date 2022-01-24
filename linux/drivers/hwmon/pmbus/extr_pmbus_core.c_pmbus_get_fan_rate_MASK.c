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
struct pmbus_sensor {int data; } ;
struct pmbus_data {int dummy; } ;
struct i2c_client {int dummy; } ;
typedef  enum pmbus_fan_mode { ____Placeholder_pmbus_fan_mode } pmbus_fan_mode ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct pmbus_sensor*) ; 
 int PMBUS_VIRT_FAN_TARGET_1 ; 
 int PMBUS_VIRT_PWM_1 ; 
 int FUNC1 (struct pmbus_sensor*) ; 
 struct pmbus_data* FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/ * pmbus_fan_command_registers ; 
 int /*<<< orphan*/ * pmbus_fan_config_registers ; 
 int* pmbus_fan_rpm_mask ; 
 struct pmbus_sensor* FUNC3 (struct pmbus_data*,int,int) ; 
 int FUNC4 (struct i2c_client*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct i2c_client*,int,int /*<<< orphan*/ ) ; 
 int rpm ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client, int page, int id,
			      enum pmbus_fan_mode mode,
			      bool from_cache)
{
	struct pmbus_data *data = FUNC2(client);
	bool want_rpm, have_rpm;
	struct pmbus_sensor *s;
	int config;
	int reg;

	want_rpm = (mode == rpm);

	if (from_cache) {
		reg = want_rpm ? PMBUS_VIRT_FAN_TARGET_1 : PMBUS_VIRT_PWM_1;
		s = FUNC3(data, page, reg + id);
		if (FUNC0(s))
			return FUNC1(s);

		return s->data;
	}

	config = FUNC4(client, page,
				      pmbus_fan_config_registers[id]);
	if (config < 0)
		return config;

	have_rpm = !!(config & pmbus_fan_rpm_mask[id]);
	if (want_rpm == have_rpm)
		return FUNC5(client, page,
					    pmbus_fan_command_registers[id]);

	/* Can't sensibly map between RPM and PWM, just return zero */
	return 0;
}