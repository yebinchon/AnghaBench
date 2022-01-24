#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct tc654_data {int config; int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int EINVAL ; 
 int* TC654_FAN_PULSE_SHIFT ; 
 int /*<<< orphan*/  TC654_REG_CONFIG ; 
 struct tc654_data* FUNC0 (struct device*) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				struct device_attribute *da, const char *buf,
				size_t count)
{
	int nr = FUNC5(da)->index;
	struct tc654_data *data = FUNC0(dev);
	struct i2c_client *client = data->client;
	u8 config;
	unsigned long val;
	int ret;

	if (FUNC2(buf, 10, &val))
		return -EINVAL;

	switch (val) {
	case 1:
		config = 0;
		break;
	case 2:
		config = 1;
		break;
	case 4:
		config = 2;
		break;
	case 8:
		config = 3;
		break;
	default:
		return -EINVAL;
	}

	FUNC3(&data->update_lock);

	data->config &= ~(0x03 << TC654_FAN_PULSE_SHIFT[nr]);
	data->config |= (config << TC654_FAN_PULSE_SHIFT[nr]);
	ret = FUNC1(client, TC654_REG_CONFIG, data->config);

	FUNC4(&data->update_lock);
	return ret < 0 ? ret : count;
}