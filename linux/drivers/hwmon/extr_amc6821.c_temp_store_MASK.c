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
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct amc6821_data {long* temp; int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 size_t EIO ; 
 long FUNC0 (long,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct amc6821_data* FUNC2 (struct device*) ; 
 scalar_t__ FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,long) ; 
 int FUNC4 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * temp_reg ; 
 TYPE_1__* FUNC7 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev, struct device_attribute *attr,
			  const char *buf, size_t count)
{
	struct amc6821_data *data = FUNC2(dev);
	struct i2c_client *client = data->client;
	int ix = FUNC7(attr)->index;
	long val;

	int ret = FUNC4(buf, 10, &val);
	if (ret)
		return ret;
	val = FUNC0(val / 1000, -128, 127);

	FUNC5(&data->update_lock);
	data->temp[ix] = val;
	if (FUNC3(client, temp_reg[ix], data->temp[ix])) {
		FUNC1(&client->dev, "Register write error, aborting.\n");
		count = -EIO;
	}
	FUNC6(&data->update_lock);
	return count;
}