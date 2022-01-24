#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  value ;
typedef  int /*<<< orphan*/  u32 ;
struct hid_sensor_custom {int input_field_count; int /*<<< orphan*/  hsdev; TYPE_3__* fields; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct device_attribute {TYPE_1__ attr; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_5__ {int /*<<< orphan*/  report_id; } ;
struct TYPE_6__ {TYPE_2__ attribute; } ;

/* Variables and functions */
 size_t EINVAL ; 
 int HID_CUSTOM_NAME_LENGTH ; 
 struct hid_sensor_custom* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int*) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int*,int*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev, struct device_attribute *attr,
			   const char *buf, size_t count)
{
	struct hid_sensor_custom *sensor_inst = FUNC0(dev);
	int index, field_index, usage;
	char name[HID_CUSTOM_NAME_LENGTH];
	int value;

	if (FUNC3(attr->attr.name, "feature-%x-%x-%s", &index, &usage,
		   name) == 3) {
		field_index = index + sensor_inst->input_field_count;
	} else
		return -EINVAL;

	if (!FUNC5(name, "value", FUNC4("value"))) {
		u32 report_id;
		int ret;

		if (FUNC1(buf, 0, &value) != 0)
			return -EINVAL;

		report_id = sensor_inst->fields[field_index].attribute.
								report_id;
		ret = FUNC2(sensor_inst->hsdev, report_id,
					     index, sizeof(value), &value);
	} else
		return -EINVAL;

	return count;
}