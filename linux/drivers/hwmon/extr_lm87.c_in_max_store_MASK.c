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
struct lm87_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * in_max; int /*<<< orphan*/ * in_scale; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct i2c_client* FUNC3 (struct device*) ; 
 struct lm87_data* FUNC4 (struct i2c_client*) ; 
 int FUNC5 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC9 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev, struct device_attribute *attr,
			    const char *buf, size_t count)
{
	struct i2c_client *client = FUNC3(dev);
	struct lm87_data *data = FUNC4(client);
	int nr = FUNC9(attr)->index;
	long val;
	int err;

	err = FUNC5(buf, 10, &val);
	if (err)
		return err;

	FUNC7(&data->update_lock);
	data->in_max[nr] = FUNC0(val, data->in_scale[nr]);
	FUNC6(client, nr < 6 ? FUNC2(nr) :
			 FUNC1(nr - 6), data->in_max[nr]);
	FUNC8(&data->update_lock);
	return count;
}