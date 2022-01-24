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
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct gl520_data {int* fan_div; int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GL520_REG_FAN_DIV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned long) ; 
 struct gl520_data* FUNC1 (struct device*) ; 
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
	struct gl520_data *data = FUNC1(dev);
	struct i2c_client *client = data->client;
	int n = FUNC7(attr)->index;
	u8 r;
	unsigned long v;
	int err;

	err = FUNC4(buf, 10, &v);
	if (err)
		return err;

	switch (v) {
	case 1:
		r = 0;
		break;
	case 2:
		r = 1;
		break;
	case 4:
		r = 2;
		break;
	case 8:
		r = 3;
		break;
	default:
		FUNC0(&client->dev,
	"fan_div value %ld not supported. Choose one of 1, 2, 4 or 8!\n", v);
		return -EINVAL;
	}

	FUNC5(&data->update_lock);
	data->fan_div[n] = r;

	if (n == 0)
		FUNC3(client, GL520_REG_FAN_DIV,
				  (FUNC2(client, GL520_REG_FAN_DIV)
				   & ~0xc0) | (r << 6));
	else
		FUNC3(client, GL520_REG_FAN_DIV,
				  (FUNC2(client, GL520_REG_FAN_DIV)
				   & ~0x30) | (r << 4));

	FUNC6(&data->update_lock);
	return count;
}