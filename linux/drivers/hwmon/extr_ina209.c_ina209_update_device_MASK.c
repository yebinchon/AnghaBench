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
struct ina209_data {int valid; int /*<<< orphan*/  update_lock; scalar_t__ last_updated; scalar_t__* regs; scalar_t__ update_interval; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 struct ina209_data* FUNC1 (scalar_t__) ; 
 struct ina209_data* FUNC2 (struct device*) ; 
 scalar_t__ FUNC3 (struct i2c_client*,int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static struct ina209_data *FUNC7(struct device *dev)
{
	struct ina209_data *data = FUNC2(dev);
	struct i2c_client *client = data->client;
	struct ina209_data *ret = data;
	s32 val;
	int i;

	FUNC4(&data->update_lock);

	if (!data->valid ||
	    FUNC6(jiffies, data->last_updated + data->update_interval)) {
		for (i = 0; i < FUNC0(data->regs); i++) {
			val = FUNC3(client, i);
			if (val < 0) {
				ret = FUNC1(val);
				goto abort;
			}
			data->regs[i] = val;
		}
		data->last_updated = jiffies;
		data->valid = true;
	}
abort:
	FUNC5(&data->update_lock);
	return ret;
}