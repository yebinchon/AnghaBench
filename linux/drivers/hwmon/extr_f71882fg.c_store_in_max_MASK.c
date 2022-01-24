#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct f71882fg_data {scalar_t__ type; long in1_max; int /*<<< orphan*/  update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  F71882FG_REG_IN1_HIGH ; 
 int /*<<< orphan*/  F81866_REG_IN1_HIGH ; 
 long FUNC0 (long,int /*<<< orphan*/ ,int) ; 
 struct f71882fg_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct f71882fg_data*,int /*<<< orphan*/ ,long) ; 
 scalar_t__ f81866a ; 
 int FUNC3 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev, struct device_attribute
	*devattr, const char *buf, size_t count)
{
	struct f71882fg_data *data = FUNC1(dev);
	int err;
	long val;

	err = FUNC3(buf, 10, &val);
	if (err)
		return err;

	val /= 8;
	val = FUNC0(val, 0, 255);

	FUNC4(&data->update_lock);
	if (data->type == f81866a)
		FUNC2(data, F81866_REG_IN1_HIGH, val);
	else
		FUNC2(data, F71882FG_REG_IN1_HIGH, val);
	data->in1_max = val;
	FUNC5(&data->update_lock);

	return count;
}