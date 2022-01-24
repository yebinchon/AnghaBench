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
struct max31790_data {int valid; int fault_status; int* tach; int* fan_config; int* pwm; int* target_count; int /*<<< orphan*/  update_lock; scalar_t__ last_updated; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct max31790_data* FUNC0 (int) ; 
 scalar_t__ HZ ; 
 int MAX31790_FAN_CFG_TACH_INPUT ; 
 int /*<<< orphan*/  MAX31790_REG_FAN_FAULT_STATUS1 ; 
 int /*<<< orphan*/  MAX31790_REG_FAN_FAULT_STATUS2 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int NR_CHANNEL ; 
 struct max31790_data* FUNC4 (struct device*) ; 
 int FUNC5 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static struct max31790_data *FUNC10(struct device *dev)
{
	struct max31790_data *data = FUNC4(dev);
	struct i2c_client *client = data->client;
	struct max31790_data *ret = data;
	int i;
	int rv;

	FUNC7(&data->update_lock);

	if (FUNC9(jiffies, data->last_updated + HZ) || !data->valid) {
		rv = FUNC5(client,
				MAX31790_REG_FAN_FAULT_STATUS1);
		if (rv < 0)
			goto abort;
		data->fault_status = rv & 0x3F;

		rv = FUNC5(client,
				MAX31790_REG_FAN_FAULT_STATUS2);
		if (rv < 0)
			goto abort;
		data->fault_status |= (rv & 0x3F) << 6;

		for (i = 0; i < NR_CHANNEL; i++) {
			rv = FUNC6(client,
					FUNC2(i));
			if (rv < 0)
				goto abort;
			data->tach[i] = rv;

			if (data->fan_config[i]
			    & MAX31790_FAN_CFG_TACH_INPUT) {
				rv = FUNC6(client,
					FUNC2(NR_CHANNEL
								+ i));
				if (rv < 0)
					goto abort;
				data->tach[NR_CHANNEL + i] = rv;
			} else {
				rv = FUNC6(client,
						FUNC1(i));
				if (rv < 0)
					goto abort;
				data->pwm[i] = rv;

				rv = FUNC6(client,
						FUNC3(i));
				if (rv < 0)
					goto abort;
				data->target_count[i] = rv;
			}
		}

		data->last_updated = jiffies;
		data->valid = true;
	}
	goto done;

abort:
	data->valid = false;
	ret = FUNC0(rv);

done:
	FUNC8(&data->update_lock);

	return ret;
}