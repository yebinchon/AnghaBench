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
typedef  int u16 ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct amc6821_data {int* fan; int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 size_t EIO ; 
 scalar_t__ FUNC0 (long,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct amc6821_data* FUNC2 (struct device*) ; 
 int /*<<< orphan*/ * fan_reg_hi ; 
 int /*<<< orphan*/ * fan_reg_low ; 
 scalar_t__ FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev, struct device_attribute *attr,
			 const char *buf, size_t count)
{
	struct amc6821_data *data = FUNC2(dev);
	struct i2c_client *client = data->client;
	long val;
	int ix = FUNC7(attr)->index;
	int ret = FUNC4(buf, 10, &val);
	if (ret)
		return ret;
	val = 1 > val ? 0xFFFF : 6000000/val;

	FUNC5(&data->update_lock);
	data->fan[ix] = (u16) FUNC0(val, 1, 0xFFFF);
	if (FUNC3(client, fan_reg_low[ix],
			data->fan[ix] & 0xFF)) {
		FUNC1(&client->dev, "Register write error, aborting.\n");
		count = -EIO;
		goto EXIT;
	}
	if (FUNC3(client,
			fan_reg_hi[ix], data->fan[ix] >> 8)) {
		FUNC1(&client->dev, "Register write error, aborting.\n");
		count = -EIO;
	}
EXIT:
	FUNC6(&data->update_lock);
	return count;
}