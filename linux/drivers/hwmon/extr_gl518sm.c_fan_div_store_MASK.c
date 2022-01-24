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
struct i2c_client {int dummy; } ;
struct gl518_data {unsigned long* fan_div; int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GL518_REG_MISC ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,unsigned long) ; 
 struct gl518_data* FUNC1 (struct device*) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
			     struct device_attribute *attr, const char *buf,
			     size_t count)
{
	struct gl518_data *data = FUNC1(dev);
	struct i2c_client *client = data->client;
	int nr = FUNC7(attr)->index;
	int regvalue;
	unsigned long val;
	int err;

	err = FUNC4(buf, 10, &val);
	if (err)
		return err;

	switch (val) {
	case 1:
		val = 0;
		break;
	case 2:
		val = 1;
		break;
	case 4:
		val = 2;
		break;
	case 8:
		val = 3;
		break;
	default:
		FUNC0(dev,
			"Invalid fan clock divider %lu, choose one of 1, 2, 4 or 8\n",
			val);
		return -EINVAL;
	}

	FUNC5(&data->update_lock);
	regvalue = FUNC2(client, GL518_REG_MISC);
	data->fan_div[nr] = val;
	regvalue = (regvalue & ~(0xc0 >> (2 * nr)))
		 | (data->fan_div[nr] << (6 - 2 * nr));
	FUNC3(client, GL518_REG_MISC, regvalue);
	FUNC6(&data->update_lock);
	return count;
}