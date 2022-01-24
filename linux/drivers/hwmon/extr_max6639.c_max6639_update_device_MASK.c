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
struct max6639_data {int valid; int status; int* fan; int* temp; int* temp_fault; int /*<<< orphan*/  update_lock; scalar_t__ last_updated; struct i2c_client* client; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct max6639_data* FUNC0 (int) ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  MAX6639_REG_STATUS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 struct max6639_data* FUNC5 (struct device*) ; 
 int FUNC6 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static struct max6639_data *FUNC10(struct device *dev)
{
	struct max6639_data *data = FUNC5(dev);
	struct i2c_client *client = data->client;
	struct max6639_data *ret = data;
	int i;
	int status_reg;

	FUNC7(&data->update_lock);

	if (FUNC9(jiffies, data->last_updated + 2 * HZ) || !data->valid) {
		int res;

		FUNC4(&client->dev, "Starting max6639 update\n");

		status_reg = FUNC6(client,
						      MAX6639_REG_STATUS);
		if (status_reg < 0) {
			ret = FUNC0(status_reg);
			goto abort;
		}

		data->status = status_reg;

		for (i = 0; i < 2; i++) {
			res = FUNC6(client,
					FUNC1(i));
			if (res < 0) {
				ret = FUNC0(res);
				goto abort;
			}
			data->fan[i] = res;

			res = FUNC6(client,
					FUNC3(i));
			if (res < 0) {
				ret = FUNC0(res);
				goto abort;
			}
			data->temp[i] = res >> 5;
			data->temp_fault[i] = res & 0x01;

			res = FUNC6(client,
					FUNC2(i));
			if (res < 0) {
				ret = FUNC0(res);
				goto abort;
			}
			data->temp[i] |= res << 3;
		}

		data->last_updated = jiffies;
		data->valid = 1;
	}
abort:
	FUNC8(&data->update_lock);

	return ret;
}