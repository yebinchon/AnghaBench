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
struct vt1211_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/ ** pwm_auto_pwm; } ;
struct sensor_device_attribute_2 {int index; int nr; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ,int) ; 
 struct vt1211_data* FUNC2 (struct device*) ; 
 int FUNC3 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct sensor_device_attribute_2* FUNC6 (struct device_attribute*) ; 
 int /*<<< orphan*/  FUNC7 (struct vt1211_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
				      struct device_attribute *attr,
				      const char *buf, size_t count)
{
	struct vt1211_data *data = FUNC2(dev);
	struct sensor_device_attribute_2 *sensor_attr_2 =
						FUNC6(attr);
	int ix = sensor_attr_2->index;
	int ap = sensor_attr_2->nr;
	unsigned long val;
	int err;

	err = FUNC3(buf, 10, &val);
	if (err)
		return err;

	FUNC4(&data->update_lock);
	data->pwm_auto_pwm[ix][ap] = FUNC1(val, 0, 255);
	FUNC7(data, FUNC0(ix, ap),
		      data->pwm_auto_pwm[ix][ap]);
	FUNC5(&data->update_lock);

	return count;
}