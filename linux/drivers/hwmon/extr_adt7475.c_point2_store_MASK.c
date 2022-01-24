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
struct sensor_device_attribute_2 {size_t index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7475_data {int config5; int** temp; int* range; int /*<<< orphan*/  lock; struct i2c_client* client; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 size_t AUTOMIN ; 
 size_t EINVAL ; 
 int /*<<< orphan*/  REG_CONFIG5 ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__* autorange_table ; 
 long FUNC4 (long,scalar_t__,scalar_t__) ; 
 struct adt7475_data* FUNC5 (struct device*) ; 
 long FUNC6 (long,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,int /*<<< orphan*/ ,long) ; 
 scalar_t__ FUNC8 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (struct adt7475_data*,int) ; 
 struct sensor_device_attribute_2* FUNC12 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC13(struct device *dev, struct device_attribute *attr,
			    const char *buf, size_t count)
{
	struct adt7475_data *data = FUNC5(dev);
	struct i2c_client *client = data->client;
	struct sensor_device_attribute_2 *sattr = FUNC12(attr);
	int temp;
	long val;

	if (FUNC8(buf, 10, &val))
		return -EINVAL;

	FUNC9(&data->lock);

	/* Get a fresh copy of the needed registers */
	data->config5 = FUNC3(REG_CONFIG5);
	data->temp[AUTOMIN][sattr->index] =
		FUNC3(FUNC1(sattr->index)) << 2;
	data->range[sattr->index] =
		FUNC3(FUNC2(sattr->index));

	/*
	 * The user will write an absolute value, so subtract the start point
	 * to figure the range
	 */
	temp = FUNC11(data, data->temp[AUTOMIN][sattr->index]);
	val = FUNC4(val, temp + autorange_table[0],
		temp + autorange_table[FUNC0(autorange_table) - 1]);
	val -= temp;

	/* Find the nearest table entry to what the user wrote */
	val = FUNC6(val, autorange_table, FUNC0(autorange_table));

	data->range[sattr->index] &= ~0xF0;
	data->range[sattr->index] |= val << 4;

	FUNC7(client, FUNC2(sattr->index),
				  data->range[sattr->index]);

	FUNC10(&data->lock);
	return count;
}