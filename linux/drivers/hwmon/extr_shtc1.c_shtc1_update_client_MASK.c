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
struct shtc1_data {int valid; int temperature; int humidity; int /*<<< orphan*/  update_lock; scalar_t__ last_updated; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 struct shtc1_data* FUNC0 (int) ; 
 int HZ ; 
 int SHTC1_RESPONSE_LENGTH ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 struct shtc1_data* FUNC2 (struct device*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct i2c_client*,struct shtc1_data*,unsigned char*,int) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static struct shtc1_data *FUNC7(struct device *dev)
{
	struct shtc1_data *data = FUNC2(dev);
	struct i2c_client *client = data->client;
	unsigned char buf[SHTC1_RESPONSE_LENGTH];
	int val;
	int ret = 0;

	FUNC3(&data->update_lock);

	if (FUNC6(jiffies, data->last_updated + HZ / 10) || !data->valid) {
		ret = FUNC5(client, data, buf, sizeof(buf));
		if (ret)
			goto out;

		/*
		 * From datasheet:
		 * T = -45 + 175 * ST / 2^16
		 * RH = 100 * SRH / 2^16
		 *
		 * Adapted for integer fixed point (3 digit) arithmetic.
		 */
		val = FUNC1((__be16 *)buf);
		data->temperature = ((21875 * val) >> 13) - 45000;
		val = FUNC1((__be16 *)(buf + 3));
		data->humidity = ((12500 * val) >> 13);

		data->last_updated = jiffies;
		data->valid = true;
	}

out:
	FUNC4(&data->update_lock);

	return ret == 0 ? data : FUNC0(ret);
}