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
struct TYPE_2__ {int /*<<< orphan*/  product_id; } ;
struct hideep_ts {int /*<<< orphan*/  dev_mutex; TYPE_1__ dwz_info; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct hideep_ts* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC5 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				      struct device_attribute *attr, char *buf)
{
	struct i2c_client *client = FUNC5(dev);
	struct hideep_ts *ts = FUNC1(client);
	ssize_t len;

	FUNC2(&ts->dev_mutex);
	len = FUNC4(buf, PAGE_SIZE, "%04x\n",
			FUNC0(ts->dwz_info.product_id));
	FUNC3(&ts->dev_mutex);

	return len;
}