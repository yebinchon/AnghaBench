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
struct mip4_ts {int product_id; TYPE_1__* input; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct mip4_ts* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 size_t FUNC3 (char*,int /*<<< orphan*/ ,char*,int) ; 
 struct i2c_client* FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
					  struct device_attribute *attr,
					  char *buf)
{
	struct i2c_client *client = FUNC4(dev);
	struct mip4_ts *ts = FUNC0(client);
	size_t count;

	FUNC1(&ts->input->mutex);

	count = FUNC3(buf, PAGE_SIZE, "%04X\n", ts->product_id);

	FUNC2(&ts->input->mutex);

	return count;
}