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
struct gl520_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * temp_max_hyst; struct i2c_client* client; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int /*<<< orphan*/ * GL520_REG_TEMP_MAX_HYST ; 
 int /*<<< orphan*/  FUNC0 (long) ; 
 struct gl520_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
				   struct device_attribute *attr,
				   const char *buf, size_t count)
{
	struct gl520_data *data = FUNC1(dev);
	struct i2c_client *client = data->client;
	int n = FUNC6(attr)->index;
	long v;
	int err;

	err = FUNC3(buf, 10, &v);
	if (err)
		return err;

	FUNC4(&data->update_lock);
	data->temp_max_hyst[n] = FUNC0(v);
	FUNC2(client, GL520_REG_TEMP_MAX_HYST[n],
			  data->temp_max_hyst[n]);
	FUNC5(&data->update_lock);
	return count;
}