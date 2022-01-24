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
struct device {int dummy; } ;
struct adc128_data {int valid; size_t mode; int** in; int* temp; int alarms; int /*<<< orphan*/  update_lock; scalar_t__ last_updated; struct i2c_client* client; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADC128_REG_ALARM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  ADC128_REG_TEMP ; 
 int /*<<< orphan*/  ADC128_REG_TEMP_HYST ; 
 int /*<<< orphan*/  ADC128_REG_TEMP_MAX ; 
 struct adc128_data* FUNC3 (int) ; 
 scalar_t__ HZ ; 
 struct adc128_data* FUNC4 (struct device*) ; 
 int FUNC5 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int* num_inputs ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static struct adc128_data *FUNC10(struct device *dev)
{
	struct adc128_data *data = FUNC4(dev);
	struct i2c_client *client = data->client;
	struct adc128_data *ret = data;
	int i, rv;

	FUNC7(&data->update_lock);

	if (FUNC9(jiffies, data->last_updated + HZ) || !data->valid) {
		for (i = 0; i < num_inputs[data->mode]; i++) {
			rv = FUNC6(client,
							 FUNC0(i));
			if (rv < 0)
				goto abort;
			data->in[0][i] = rv >> 4;

			rv = FUNC5(client,
						      FUNC2(i));
			if (rv < 0)
				goto abort;
			data->in[1][i] = rv << 4;

			rv = FUNC5(client,
						      FUNC1(i));
			if (rv < 0)
				goto abort;
			data->in[2][i] = rv << 4;
		}

		if (data->mode != 1) {
			rv = FUNC6(client,
							 ADC128_REG_TEMP);
			if (rv < 0)
				goto abort;
			data->temp[0] = rv >> 7;

			rv = FUNC5(client,
						      ADC128_REG_TEMP_MAX);
			if (rv < 0)
				goto abort;
			data->temp[1] = rv << 1;

			rv = FUNC5(client,
						      ADC128_REG_TEMP_HYST);
			if (rv < 0)
				goto abort;
			data->temp[2] = rv << 1;
		}

		rv = FUNC5(client, ADC128_REG_ALARM);
		if (rv < 0)
			goto abort;
		data->alarms |= rv;

		data->last_updated = jiffies;
		data->valid = true;
	}
	goto done;

abort:
	ret = FUNC3(rv);
	data->valid = false;
done:
	FUNC8(&data->update_lock);
	return ret;
}