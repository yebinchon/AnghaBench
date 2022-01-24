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
struct sensor_device_attribute_2 {int nr; int index; } ;
struct nct6775_data {unsigned long** fan_time; int /*<<< orphan*/  update_lock; int /*<<< orphan*/ ** REG_FAN_TIME; int /*<<< orphan*/ * pwm_mode; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 struct nct6775_data* FUNC0 (struct device*) ; 
 int FUNC1 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nct6775_data*,int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC5 (unsigned long,int /*<<< orphan*/ ) ; 
 struct sensor_device_attribute_2* FUNC6 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t
FUNC7(struct device *dev, struct device_attribute *attr,
	       const char *buf, size_t count)
{
	struct nct6775_data *data = FUNC0(dev);
	struct sensor_device_attribute_2 *sattr = FUNC6(attr);
	int nr = sattr->nr;
	int index = sattr->index;
	unsigned long val;
	int err;

	err = FUNC1(buf, 10, &val);
	if (err < 0)
		return err;

	val = FUNC5(val, data->pwm_mode[nr]);
	FUNC2(&data->update_lock);
	data->fan_time[index][nr] = val;
	FUNC4(data, data->REG_FAN_TIME[index][nr], val);
	FUNC3(&data->update_lock);
	return count;
}