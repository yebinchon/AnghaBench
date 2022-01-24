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
struct sensor_device_attribute_2 {size_t nr; size_t index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7475_data {int** voltage; int /*<<< orphan*/  lock; int /*<<< orphan*/  bypass_attn; struct i2c_client* client; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t ADT7475_VOLTAGE_COUNT ; 
 size_t EINVAL ; 
 size_t MIN ; 
 unsigned char REG_VTT_MAX ; 
 unsigned char REG_VTT_MIN ; 
 unsigned char FUNC0 (size_t) ; 
 unsigned char FUNC1 (size_t) ; 
 struct adt7475_data* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,unsigned char,int) ; 
 scalar_t__ FUNC4 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct sensor_device_attribute_2* FUNC7 (struct device_attribute*) ; 
 int FUNC8 (size_t,long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev,
			     struct device_attribute *attr, const char *buf,
			     size_t count)
{

	struct sensor_device_attribute_2 *sattr = FUNC7(attr);
	struct adt7475_data *data = FUNC2(dev);
	struct i2c_client *client = data->client;
	unsigned char reg;
	long val;

	if (FUNC4(buf, 10, &val))
		return -EINVAL;

	FUNC5(&data->lock);

	data->voltage[sattr->nr][sattr->index] =
				FUNC8(sattr->index, val, data->bypass_attn);

	if (sattr->index < ADT7475_VOLTAGE_COUNT) {
		if (sattr->nr == MIN)
			reg = FUNC1(sattr->index);
		else
			reg = FUNC0(sattr->index);
	} else {
		if (sattr->nr == MIN)
			reg = REG_VTT_MIN;
		else
			reg = REG_VTT_MAX;
	}

	FUNC3(client, reg,
				  data->voltage[sattr->nr][sattr->index] >> 2);
	FUNC6(&data->lock);

	return count;
}