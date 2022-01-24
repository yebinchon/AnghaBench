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
struct ltc4215_data {int valid; int /*<<< orphan*/  update_lock; scalar_t__ last_updated; scalar_t__* regs; struct i2c_client* client; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct ltc4215_data* FUNC2 (struct device*) ; 
 scalar_t__ FUNC3 (struct i2c_client*,int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static struct ltc4215_data *FUNC8(struct device *dev)
{
	struct ltc4215_data *data = FUNC2(dev);
	struct i2c_client *client = data->client;
	s32 val;
	int i;

	FUNC4(&data->update_lock);

	/* The chip's A/D updates 10 times per second */
	if (FUNC6(jiffies, data->last_updated + HZ / 10) || !data->valid) {

		FUNC1(&client->dev, "Starting ltc4215 update\n");

		/* Read all registers */
		for (i = 0; i < FUNC0(data->regs); i++) {
			val = FUNC3(client, i);
			if (FUNC7(val < 0))
				data->regs[i] = 0;
			else
				data->regs[i] = val;
		}

		data->last_updated = jiffies;
		data->valid = 1;
	}

	FUNC5(&data->update_lock);

	return data;
}