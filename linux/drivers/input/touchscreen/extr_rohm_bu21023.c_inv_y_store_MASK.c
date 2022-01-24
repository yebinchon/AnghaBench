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
struct rohm_ts_data {TYPE_1__* input; int /*<<< orphan*/  setup2; scalar_t__ initialized; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMMON_SETUP2 ; 
 int /*<<< orphan*/  INV_Y ; 
 struct rohm_ts_data* FUNC0 (struct i2c_client*) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct i2c_client* FUNC5 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev, struct device_attribute *attr,
			   const char *buf, size_t count)
{
	struct i2c_client *client = FUNC5(dev);
	struct rohm_ts_data *ts = FUNC0(client);
	unsigned int val;
	int error;

	error = FUNC2(buf, 0, &val);
	if (error)
		return error;

	error = FUNC3(&ts->input->mutex);
	if (error)
		return error;

	if (val)
		ts->setup2 |= INV_Y;
	else
		ts->setup2 &= ~INV_Y;

	if (ts->initialized)
		error = FUNC1(client, COMMON_SETUP2,
						  ts->setup2);

	FUNC4(&ts->input->mutex);

	return error ? error : count;
}