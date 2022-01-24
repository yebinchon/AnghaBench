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
typedef  int u8 ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adm1031_data {unsigned long update_interval; int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ADM1031_REG_FAN_FILTER ; 
 int ADM1031_UPDATE_RATE_MASK ; 
 int ADM1031_UPDATE_RATE_SHIFT ; 
 int FUNC0 (unsigned long*) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 struct adm1031_data* FUNC3 (struct device*) ; 
 int FUNC4 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 unsigned long* update_intervals ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
				     struct device_attribute *attr,
				     const char *buf, size_t count)
{
	struct adm1031_data *data = FUNC3(dev);
	struct i2c_client *client = data->client;
	unsigned long val;
	int i, err;
	u8 reg;

	err = FUNC4(buf, 10, &val);
	if (err)
		return err;

	/*
	 * Find the nearest update interval from the table.
	 * Use it to determine the matching update rate.
	 */
	for (i = 0; i < FUNC0(update_intervals) - 1; i++) {
		if (val >= update_intervals[i])
			break;
	}
	/* if not found, we point to the last entry (lowest update interval) */

	/* set the new update rate while preserving other settings */
	reg = FUNC1(client, ADM1031_REG_FAN_FILTER);
	reg &= ~ADM1031_UPDATE_RATE_MASK;
	reg |= i << ADM1031_UPDATE_RATE_SHIFT;
	FUNC2(client, ADM1031_REG_FAN_FILTER, reg);

	FUNC5(&data->update_lock);
	data->update_interval = update_intervals[i];
	FUNC6(&data->update_lock);

	return count;
}