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
struct sensor_device_attribute {int index; } ;
struct max6650_data {int alarm; int valid; int /*<<< orphan*/  update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct max6650_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct max6650_data*) ; 
 struct max6650_data* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 struct sensor_device_attribute* FUNC6 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
			  struct device_attribute *devattr, char *buf)
{
	struct sensor_device_attribute *attr = FUNC6(devattr);
	struct max6650_data *data = FUNC2(dev);
	bool alarm;

	if (FUNC0(data))
		return FUNC1(data);

	alarm = data->alarm & attr->index;
	if (alarm) {
		FUNC3(&data->update_lock);
		data->alarm &= ~attr->index;
		data->valid = false;
		FUNC4(&data->update_lock);
	}

	return FUNC5(buf, "%d\n", alarm);
}