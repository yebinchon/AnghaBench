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
struct lm87_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * temp_low; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int /*<<< orphan*/ * LM87_REG_TEMP_LOW ; 
 int /*<<< orphan*/  FUNC0 (long) ; 
 struct i2c_client* FUNC1 (struct device*) ; 
 struct lm87_data* FUNC2 (struct i2c_client*) ; 
 int FUNC3 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
			      struct device_attribute *attr, const char *buf,
			      size_t count)
{
	struct i2c_client *client = FUNC1(dev);
	struct lm87_data *data = FUNC2(client);
	int nr = FUNC7(attr)->index;
	long val;
	int err;

	err = FUNC3(buf, 10, &val);
	if (err)
		return err;

	FUNC5(&data->update_lock);
	data->temp_low[nr] = FUNC0(val);
	FUNC4(client, LM87_REG_TEMP_LOW[nr], data->temp_low[nr]);
	FUNC6(&data->update_lock);
	return count;
}