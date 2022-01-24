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
struct f71882fg_data {long** pwm_auto_point_temp; int /*<<< orphan*/  update_lock; scalar_t__ auto_point_temp_signed; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int index; int nr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 long FUNC1 (long,int,int) ; 
 struct f71882fg_data* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct f71882fg_data*,int /*<<< orphan*/ ,long) ; 
 int FUNC4 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
					 struct device_attribute *devattr,
					 const char *buf, size_t count)
{
	struct f71882fg_data *data = FUNC2(dev);
	int err, pwm = FUNC7(devattr)->index;
	int point = FUNC7(devattr)->nr;
	long val;

	err = FUNC4(buf, 10, &val);
	if (err)
		return err;

	val /= 1000;

	if (data->auto_point_temp_signed)
		val = FUNC1(val, -128, 127);
	else
		val = FUNC1(val, 0, 127);

	FUNC5(&data->update_lock);
	FUNC3(data, FUNC0(pwm, point), val);
	data->pwm_auto_point_temp[pwm][point] = val;
	FUNC6(&data->update_lock);

	return count;
}