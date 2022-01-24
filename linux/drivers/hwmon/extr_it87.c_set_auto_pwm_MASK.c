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
struct it87_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/ ** auto_pwm; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 struct it87_data* FUNC2 (struct device*) ; 
 scalar_t__ FUNC3 (struct it87_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct it87_data*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct it87_data*,long) ; 
 struct sensor_device_attribute_2* FUNC9 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev, struct device_attribute *attr,
			    const char *buf, size_t count)
{
	struct it87_data *data = FUNC2(dev);
	struct sensor_device_attribute_2 *sensor_attr =
			FUNC9(attr);
	int nr = sensor_attr->nr;
	int point = sensor_attr->index;
	int regaddr;
	long val;

	if (FUNC5(buf, 10, &val) < 0 || val < 0 || val > 255)
		return -EINVAL;

	FUNC6(&data->update_lock);
	data->auto_pwm[nr][point] = FUNC8(data, val);
	if (FUNC3(data))
		regaddr = FUNC1(nr, 3);
	else
		regaddr = FUNC0(nr, point);
	FUNC4(data, regaddr, data->auto_pwm[nr][point]);
	FUNC7(&data->update_lock);
	return count;
}