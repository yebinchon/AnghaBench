#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct lm85_data {int* pwm_freq; int /*<<< orphan*/  update_lock; TYPE_1__* zone; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_4__ {int index; } ;
struct TYPE_3__ {int range; int /*<<< orphan*/  max_desired; int /*<<< orphan*/  limit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (long) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (long) ; 
 struct lm85_data* FUNC4 (struct device*) ; 
 int FUNC5 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC9 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev,
					struct device_attribute *attr,
					const char *buf, size_t count)
{
	int nr = FUNC9(attr)->index;
	struct lm85_data *data = FUNC4(dev);
	struct i2c_client *client = data->client;
	int min;
	long val;
	int err;

	err = FUNC5(buf, 10, &val);
	if (err)
		return err;

	FUNC7(&data->update_lock);
	min = FUNC2(data->zone[nr].limit);
	data->zone[nr].max_desired = FUNC3(val);
	data->zone[nr].range = FUNC1(
		val - min);
	FUNC6(client, FUNC0(nr),
		((data->zone[nr].range & 0x0f) << 4)
		| data->pwm_freq[nr]);
	FUNC8(&data->update_lock);
	return count;
}