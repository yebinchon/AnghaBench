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
typedef  int /*<<< orphan*/  u8 ;
struct sensor_device_attribute {int index; } ;
struct lm63_data {int* temp8; int /*<<< orphan*/  update_lock; int /*<<< orphan*/  temp2_offset; int /*<<< orphan*/  remote_unsigned; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  LM63_REG_LOCAL_HIGH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  LM63_REG_REMOTE_TCRIT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (long) ; 
 struct lm63_data* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (char const*,int,long*) ; 
 int FUNC6 (struct lm63_data*,long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct sensor_device_attribute* FUNC9 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev, struct device_attribute *devattr,
			 const char *buf, size_t count)
{
	struct sensor_device_attribute *attr = FUNC9(devattr);
	struct lm63_data *data = FUNC3(dev);
	struct i2c_client *client = data->client;
	int nr = attr->index;
	long val;
	int err;
	int temp;
	u8 reg;

	err = FUNC5(buf, 10, &val);
	if (err)
		return err;

	FUNC7(&data->update_lock);
	switch (nr) {
	case 2:
		reg = LM63_REG_REMOTE_TCRIT;
		if (data->remote_unsigned)
			temp = FUNC1(val - data->temp2_offset);
		else
			temp = FUNC2(val - data->temp2_offset);
		break;
	case 1:
		reg = LM63_REG_LOCAL_HIGH;
		temp = FUNC2(val);
		break;
	default:	/* lookup table */
		reg = FUNC0(nr - 3);
		temp = FUNC6(data, val);
	}
	data->temp8[nr] = temp;
	FUNC4(client, reg, temp);
	FUNC8(&data->update_lock);
	return count;
}