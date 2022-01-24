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
struct emc2103_data {long* temp_max; int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 long FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * REG_TEMP_MAX ; 
 int /*<<< orphan*/  FUNC1 (long,int,int) ; 
 struct emc2103_data* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,long) ; 
 int FUNC4 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev, struct device_attribute *da,
			      const char *buf, size_t count)
{
	int nr = FUNC7(da)->index;
	struct emc2103_data *data = FUNC2(dev);
	struct i2c_client *client = data->client;
	long val;

	int result = FUNC4(buf, 10, &val);
	if (result < 0)
		return result;

	val = FUNC0(FUNC1(val, -63000, 127000), 1000);

	FUNC5(&data->update_lock);
	data->temp_max[nr] = val;
	FUNC3(client, REG_TEMP_MAX[nr], val);
	FUNC6(&data->update_lock);

	return count;
}