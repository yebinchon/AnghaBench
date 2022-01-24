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
typedef  size_t u8 ;
struct w83795_data {int* temp_src; int /*<<< orphan*/  update_lock; } ;
struct sensor_device_attribute_2 {int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 scalar_t__ FUNC1 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct i2c_client* FUNC4 (struct device*) ; 
 struct sensor_device_attribute_2* FUNC5 (struct device_attribute*) ; 
 unsigned long** tss_map ; 
 struct w83795_data* FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ssize_t
FUNC8(struct device *dev, struct device_attribute *attr,
	  const char *buf, size_t count)
{
	struct i2c_client *client = FUNC4(dev);
	struct w83795_data *data = FUNC6(dev);
	struct sensor_device_attribute_2 *sensor_attr =
	    FUNC5(attr);
	int index = sensor_attr->index;
	int tmp;
	unsigned long channel;
	u8 val = index / 2;

	if (FUNC1(buf, 10, &channel) < 0 ||
	    channel < 1 || channel > 14)
		return -EINVAL;

	/* Check if request can be fulfilled */
	for (tmp = 0; tmp < 4; tmp++) {
		if (tss_map[tmp][index] == channel - 1)
			break;
	}
	if (tmp == 4)	/* No match */
		return -EINVAL;

	FUNC2(&data->update_lock);
	if (index & 1) {
		tmp <<= 4;
		data->temp_src[val] &= 0x0f;
	} else {
		data->temp_src[val] &= 0xf0;
	}
	data->temp_src[val] |= tmp;
	FUNC7(client, FUNC0(val), data->temp_src[val]);
	FUNC3(&data->update_lock);

	return count;
}