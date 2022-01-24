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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adm1025_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * in_max; struct i2c_client* client; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (long,int /*<<< orphan*/ ) ; 
 struct adm1025_data* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * in_scale ; 
 int FUNC4 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev, struct device_attribute *attr,
			    const char *buf, size_t count)
{
	int index = FUNC7(attr)->index;
	struct adm1025_data *data = FUNC2(dev);
	struct i2c_client *client = data->client;
	long val;
	int err;

	err = FUNC4(buf, 10, &val);
	if (err)
		return err;

	FUNC5(&data->update_lock);
	data->in_max[index] = FUNC1(val, in_scale[index]);
	FUNC3(client, FUNC0(index),
				  data->in_max[index]);
	FUNC6(&data->update_lock);
	return count;
}