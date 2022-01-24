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
struct jc42_data {int valid; int* temp; int /*<<< orphan*/  update_lock; scalar_t__ last_updated; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct jc42_data* FUNC0 (int) ; 
 scalar_t__ HZ ; 
 struct jc42_data* FUNC1 (struct device*) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int t_num_temp ; 
 int /*<<< orphan*/ * temp_regs ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static struct jc42_data *FUNC6(struct device *dev)
{
	struct jc42_data *data = FUNC1(dev);
	struct i2c_client *client = data->client;
	struct jc42_data *ret = data;
	int i, val;

	FUNC3(&data->update_lock);

	if (FUNC5(jiffies, data->last_updated + HZ) || !data->valid) {
		for (i = 0; i < t_num_temp; i++) {
			val = FUNC2(client, temp_regs[i]);
			if (val < 0) {
				ret = FUNC0(val);
				goto abort;
			}
			data->temp[i] = val;
		}
		data->last_updated = jiffies;
		data->valid = true;
	}
abort:
	FUNC4(&data->update_lock);
	return ret;
}