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
struct TYPE_2__ {int /*<<< orphan*/  min_interval; } ;
struct kxtj9_data {int /*<<< orphan*/  last_poll_interval; TYPE_1__ pdata; struct input_dev* input_dev; } ;
struct input_dev {int /*<<< orphan*/  mutex; } ;
struct i2c_client {int /*<<< orphan*/  irq; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct kxtj9_data* FUNC2 (struct i2c_client*) ; 
 int FUNC3 (char const*,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (struct kxtj9_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct i2c_client* FUNC8 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev, struct device_attribute *attr,
						const char *buf, size_t count)
{
	struct i2c_client *client = FUNC8(dev);
	struct kxtj9_data *tj9 = FUNC2(client);
	struct input_dev *input_dev = tj9->input_dev;
	unsigned int interval;
	int error;

	error = FUNC3(buf, 10, &interval);
	if (error < 0)
		return error;

	/* Lock the device to prevent races with open/close (and itself) */
	FUNC6(&input_dev->mutex);

	FUNC0(client->irq);

	/*
	 * Set current interval to the greater of the minimum interval or
	 * the requested interval
	 */
	tj9->last_poll_interval = FUNC5(interval, tj9->pdata.min_interval);

	FUNC4(tj9, tj9->last_poll_interval);

	FUNC1(client->irq);
	FUNC7(&input_dev->mutex);

	return count;
}