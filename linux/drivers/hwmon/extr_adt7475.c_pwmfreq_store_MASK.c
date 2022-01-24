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
struct adt7475_data {int* range; int /*<<< orphan*/  lock; struct i2c_client* client; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct adt7475_data* FUNC3 (struct device*) ; 
 int FUNC4 (long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pwmfreq_table ; 
 struct sensor_device_attribute_2* FUNC9 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev,
			     struct device_attribute *attr, const char *buf,
			     size_t count)
{
	struct sensor_device_attribute_2 *sattr = FUNC9(attr);
	struct adt7475_data *data = FUNC3(dev);
	struct i2c_client *client = data->client;
	int out;
	long val;

	if (FUNC6(buf, 10, &val))
		return -EINVAL;

	out = FUNC4(val, pwmfreq_table, FUNC0(pwmfreq_table));

	FUNC7(&data->lock);

	data->range[sattr->index] =
		FUNC2(FUNC1(sattr->index));
	data->range[sattr->index] &= ~0xf;
	data->range[sattr->index] |= out;

	FUNC5(client, FUNC1(sattr->index),
				  data->range[sattr->index]);

	FUNC8(&data->lock);
	return count;
}