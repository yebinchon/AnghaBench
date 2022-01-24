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
struct lm85_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * temp_max; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct lm85_data*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (long) ; 
 struct lm85_data* FUNC3 (struct device*) ; 
 int FUNC4 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev,
			      struct device_attribute *attr, const char *buf,
			      size_t count)
{
	int nr = FUNC8(attr)->index;
	struct lm85_data *data = FUNC3(dev);
	struct i2c_client *client = data->client;
	long val;
	int err;

	err = FUNC4(buf, 10, &val);
	if (err)
		return err;

	if (FUNC0(data))
		val += 64;

	FUNC6(&data->update_lock);
	data->temp_max[nr] = FUNC2(val);
	FUNC5(client, FUNC1(nr), data->temp_max[nr]);
	FUNC7(&data->update_lock);
	return count;
}