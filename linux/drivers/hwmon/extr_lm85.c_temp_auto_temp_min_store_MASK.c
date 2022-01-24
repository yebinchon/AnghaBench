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
struct TYPE_3__ {int limit; int range; int max_desired; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (long) ; 
 struct lm85_data* FUNC5 (struct device*) ; 
 int FUNC6 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC10 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC11(struct device *dev,
					struct device_attribute *attr,
					const char *buf, size_t count)
{
	int nr = FUNC10(attr)->index;
	struct lm85_data *data = FUNC5(dev);
	struct i2c_client *client = data->client;
	long val;
	int err;

	err = FUNC6(buf, 10, &val);
	if (err)
		return err;

	FUNC8(&data->update_lock);
	data->zone[nr].limit = FUNC4(val);
	FUNC7(client, FUNC0(nr),
		data->zone[nr].limit);

/* Update temp_auto_max and temp_auto_range */
	data->zone[nr].range = FUNC2(
		FUNC3(data->zone[nr].max_desired) -
		FUNC3(data->zone[nr].limit));
	FUNC7(client, FUNC1(nr),
		((data->zone[nr].range & 0x0f) << 4)
		| data->pwm_freq[nr]);

	FUNC9(&data->update_lock);
	return count;
}