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
struct lm93_data {int valid; int /*<<< orphan*/  update_lock; scalar_t__ last_updated; int /*<<< orphan*/  (* update ) (struct lm93_data*,struct i2c_client*) ;struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int HZ ; 
 struct lm93_data* FUNC0 (struct device*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct lm93_data*,struct i2c_client*) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static struct lm93_data *FUNC5(struct device *dev)
{
	struct lm93_data *data = FUNC0(dev);
	struct i2c_client *client = data->client;
	const unsigned long interval = HZ + (HZ / 2);

	FUNC1(&data->update_lock);

	if (FUNC4(jiffies, data->last_updated + interval) ||
		!data->valid) {

		data->update(data, client);
		data->last_updated = jiffies;
		data->valid = 1;
	}

	FUNC2(&data->update_lock);
	return data;
}