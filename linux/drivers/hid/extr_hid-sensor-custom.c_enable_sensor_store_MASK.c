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
struct hid_sensor_custom {int enable; int /*<<< orphan*/  mutex; int /*<<< orphan*/  hsdev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 struct hid_sensor_custom* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct hid_sensor_custom*,int) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
				   struct device_attribute *attr,
				   const char *buf, size_t count)
{
	struct hid_sensor_custom *sensor_inst = FUNC0(dev);
	int value;
	int ret = -EINVAL;

	if (FUNC1(buf, 0, &value) != 0)
		return -EINVAL;

	FUNC2(&sensor_inst->mutex);
	if (value && !sensor_inst->enable) {
		ret = FUNC5(sensor_inst->hsdev);
		if (ret)
			goto unlock_state;

		ret = FUNC6(sensor_inst, true);
		if (ret) {
			FUNC4(sensor_inst->hsdev);
			goto unlock_state;
		}
		sensor_inst->enable = true;
	} else if (!value && sensor_inst->enable) {
		ret = FUNC6(sensor_inst, false);
		FUNC4(sensor_inst->hsdev);
		sensor_inst->enable = false;
	}
unlock_state:
	FUNC3(&sensor_inst->mutex);
	if (ret < 0)
		return ret;

	return count;
}