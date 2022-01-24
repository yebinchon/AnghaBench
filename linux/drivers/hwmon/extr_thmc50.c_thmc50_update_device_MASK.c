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
struct thmc50_data {scalar_t__ type; int valid; int /*<<< orphan*/  update_lock; scalar_t__ last_updated; void* alarms; void* analog_out; void** temp_critical; void** temp_min; void** temp_max; void** temp_input; scalar_t__ has_temp3; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  THMC50_REG_ANALOG_OUT ; 
 int /*<<< orphan*/  THMC50_REG_CONF ; 
 int THMC50_REG_CONF_PROGRAMMED ; 
 int /*<<< orphan*/  THMC50_REG_INTR ; 
 int /*<<< orphan*/ * THMC50_REG_TEMP ; 
 int /*<<< orphan*/ * THMC50_REG_TEMP_CRITICAL ; 
 int /*<<< orphan*/ * THMC50_REG_TEMP_DEFAULT ; 
 int /*<<< orphan*/ * THMC50_REG_TEMP_MAX ; 
 int /*<<< orphan*/ * THMC50_REG_TEMP_MIN ; 
 struct thmc50_data* FUNC0 (struct device*) ; 
 void* FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ thmc50 ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static struct thmc50_data *FUNC5(struct device *dev)
{
	struct thmc50_data *data = FUNC0(dev);
	struct i2c_client *client = data->client;
	int timeout = HZ / 5 + (data->type == thmc50 ? HZ : 0);

	FUNC2(&data->update_lock);

	if (FUNC4(jiffies, data->last_updated + timeout)
	    || !data->valid) {

		int temps = data->has_temp3 ? 3 : 2;
		int i;
		int prog = FUNC1(client, THMC50_REG_CONF);

		prog &= THMC50_REG_CONF_PROGRAMMED;

		for (i = 0; i < temps; i++) {
			data->temp_input[i] = FUNC1(client,
						THMC50_REG_TEMP[i]);
			data->temp_max[i] = FUNC1(client,
						THMC50_REG_TEMP_MAX[i]);
			data->temp_min[i] = FUNC1(client,
						THMC50_REG_TEMP_MIN[i]);
			data->temp_critical[i] =
				FUNC1(client,
					prog ? THMC50_REG_TEMP_CRITICAL[i]
					     : THMC50_REG_TEMP_DEFAULT[i]);
		}
		data->analog_out =
		    FUNC1(client, THMC50_REG_ANALOG_OUT);
		data->alarms =
		    FUNC1(client, THMC50_REG_INTR);
		data->last_updated = jiffies;
		data->valid = 1;
	}

	FUNC3(&data->update_lock);

	return data;
}