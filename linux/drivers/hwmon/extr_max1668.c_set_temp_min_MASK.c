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
struct max1668_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * temp_min; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (long,int,int) ; 
 struct max1668_data* FUNC2 (struct device*) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
			    struct device_attribute *devattr,
			    const char *buf, size_t count)
{
	int index = FUNC7(devattr)->index;
	struct max1668_data *data = FUNC2(dev);
	struct i2c_client *client = data->client;
	long temp;
	int ret;

	ret = FUNC4(buf, 10, &temp);
	if (ret < 0)
		return ret;

	FUNC5(&data->update_lock);
	data->temp_min[index] = FUNC1(temp/1000, -128, 127);
	ret = FUNC3(client,
					FUNC0(index),
					data->temp_min[index]);
	if (ret < 0)
		count = ret;
	FUNC6(&data->update_lock);

	return count;
}