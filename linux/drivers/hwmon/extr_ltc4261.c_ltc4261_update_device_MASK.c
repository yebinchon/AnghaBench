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
struct ltc4261_data {int valid; int* regs; int /*<<< orphan*/  update_lock; scalar_t__ last_updated; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 struct ltc4261_data* FUNC1 (int) ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 struct ltc4261_data* FUNC3 (struct device*) ; 
 int FUNC4 (struct i2c_client*,int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static struct ltc4261_data *FUNC9(struct device *dev)
{
	struct ltc4261_data *data = FUNC3(dev);
	struct i2c_client *client = data->client;
	struct ltc4261_data *ret = data;

	FUNC5(&data->update_lock);

	if (FUNC7(jiffies, data->last_updated + HZ / 4) || !data->valid) {
		int i;

		/* Read registers -- 0x00 to 0x09 */
		for (i = 0; i < FUNC0(data->regs); i++) {
			int val;

			val = FUNC4(client, i);
			if (FUNC8(val < 0)) {
				FUNC2(dev,
					"Failed to read ADC value: error %d\n",
					val);
				ret = FUNC1(val);
				data->valid = 0;
				goto abort;
			}
			data->regs[i] = val;
		}
		data->last_updated = jiffies;
		data->valid = 1;
	}
abort:
	FUNC6(&data->update_lock);
	return ret;
}