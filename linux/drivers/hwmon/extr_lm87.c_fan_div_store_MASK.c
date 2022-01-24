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
struct lm87_data {int* fan_min; int* fan_div; int /*<<< orphan*/  update_lock; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (unsigned long,long) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  LM87_REG_VID_FAN_DIV ; 
 struct i2c_client* FUNC4 (struct device*) ; 
 struct lm87_data* FUNC5 (struct i2c_client*) ; 
 int FUNC6 (char const*,int,long*) ; 
 int FUNC7 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC11 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC12(struct device *dev,
			     struct device_attribute *attr, const char *buf,
			     size_t count)
{
	struct i2c_client *client = FUNC4(dev);
	struct lm87_data *data = FUNC5(client);
	int nr = FUNC11(attr)->index;
	long val;
	int err;
	unsigned long min;
	u8 reg;

	err = FUNC6(buf, 10, &val);
	if (err)
		return err;

	FUNC9(&data->update_lock);
	min = FUNC1(data->fan_min[nr],
			   FUNC0(data->fan_div[nr]));

	switch (val) {
	case 1:
		data->fan_div[nr] = 0;
		break;
	case 2:
		data->fan_div[nr] = 1;
		break;
	case 4:
		data->fan_div[nr] = 2;
		break;
	case 8:
		data->fan_div[nr] = 3;
		break;
	default:
		FUNC10(&data->update_lock);
		return -EINVAL;
	}

	reg = FUNC7(client, LM87_REG_VID_FAN_DIV);
	switch (nr) {
	case 0:
	    reg = (reg & 0xCF) | (data->fan_div[0] << 4);
	    break;
	case 1:
	    reg = (reg & 0x3F) | (data->fan_div[1] << 6);
	    break;
	}
	FUNC8(client, LM87_REG_VID_FAN_DIV, reg);

	data->fan_min[nr] = FUNC2(min, val);
	FUNC8(client, FUNC3(nr),
			 data->fan_min[nr]);
	FUNC10(&data->update_lock);

	return count;
}