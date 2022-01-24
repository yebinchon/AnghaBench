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
struct lm95234_data {int valid; int status; int /*<<< orphan*/  update_lock; scalar_t__ last_updated; int /*<<< orphan*/ * temp; scalar_t__ interval; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LM95234_REG_STS_FAULT ; 
 int /*<<< orphan*/  LM95234_REG_STS_TCRIT1 ; 
 int /*<<< orphan*/  LM95234_REG_STS_TCRIT2 ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int FUNC2 (struct lm95234_data*,struct i2c_client*) ; 
 int FUNC3 (struct i2c_client*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct lm95234_data *data)
{
	struct i2c_client *client = data->client;
	int ret;

	FUNC4(&data->update_lock);

	if (FUNC6(jiffies, data->last_updated + data->interval) ||
	    !data->valid) {
		int i;

		if (!data->valid) {
			ret = FUNC2(data, client);
			if (ret < 0)
				goto abort;
		}

		data->valid = false;
		for (i = 0; i < FUNC0(data->temp); i++) {
			ret = FUNC3(client, i, &data->temp[i]);
			if (ret < 0)
				goto abort;
		}

		ret = FUNC1(client, LM95234_REG_STS_FAULT);
		if (ret < 0)
			goto abort;
		data->status = ret;

		ret = FUNC1(client, LM95234_REG_STS_TCRIT1);
		if (ret < 0)
			goto abort;
		data->status |= ret << 8;

		ret = FUNC1(client, LM95234_REG_STS_TCRIT2);
		if (ret < 0)
			goto abort;
		data->status |= ret << 16;

		data->last_updated = jiffies;
		data->valid = true;
	}
	ret = 0;
abort:
	FUNC5(&data->update_lock);

	return ret;
}