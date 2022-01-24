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
struct pem_data {int valid; int input_length; int /*<<< orphan*/  update_lock; scalar_t__ last_updated; int /*<<< orphan*/  fan_speed; scalar_t__ fans_supported; int /*<<< orphan*/  input_string; int /*<<< orphan*/  data_string; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct pem_data* FUNC0 (int) ; 
 scalar_t__ HZ ; 
 int /*<<< orphan*/  PEM_CLEAR_INFO_FLAGS ; 
 int /*<<< orphan*/  PEM_READ_DATA_STRING ; 
 int /*<<< orphan*/  PEM_READ_FAN_SPEED ; 
 int /*<<< orphan*/  PEM_READ_INPUT_STRING ; 
 struct pem_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static struct pem_data *FUNC8(struct device *dev)
{
	struct pem_data *data = FUNC1(dev);
	struct i2c_client *client = data->client;
	struct pem_data *ret = data;

	FUNC3(&data->update_lock);

	if (FUNC6(jiffies, data->last_updated + HZ) || !data->valid) {
		int result;

		/* Read data string */
		result = FUNC5(client, PEM_READ_DATA_STRING,
					data->data_string,
					sizeof(data->data_string));
		if (FUNC7(result < 0)) {
			ret = FUNC0(result);
			goto abort;
		}

		/* Read input string */
		if (data->input_length) {
			result = FUNC5(client, PEM_READ_INPUT_STRING,
						data->input_string,
						data->input_length);
			if (FUNC7(result < 0)) {
				ret = FUNC0(result);
				goto abort;
			}
		}

		/* Read fan speeds */
		if (data->fans_supported) {
			result = FUNC5(client, PEM_READ_FAN_SPEED,
						data->fan_speed,
						sizeof(data->fan_speed));
			if (FUNC7(result < 0)) {
				ret = FUNC0(result);
				goto abort;
			}
		}

		FUNC2(client, PEM_CLEAR_INFO_FLAGS);

		data->last_updated = jiffies;
		data->valid = 1;
	}
abort:
	FUNC4(&data->update_lock);
	return ret;
}