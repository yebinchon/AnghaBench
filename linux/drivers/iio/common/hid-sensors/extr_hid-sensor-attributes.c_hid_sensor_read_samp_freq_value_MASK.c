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
typedef  int /*<<< orphan*/  value ;
struct TYPE_2__ {scalar_t__ units; int /*<<< orphan*/  index; int /*<<< orphan*/  report_id; } ;
struct hid_sensor_common {TYPE_1__ poll; int /*<<< orphan*/  hsdev; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ HID_USAGE_SENSOR_UNITS_MILLISECOND ; 
 scalar_t__ HID_USAGE_SENSOR_UNITS_SECOND ; 
 int IIO_VAL_INT_PLUS_MICRO ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__,int*,int*) ; 

int FUNC2(struct hid_sensor_common *st,
				int *val1, int *val2)
{
	s32 value;
	int ret;

	ret = FUNC0(st->hsdev,
				     st->poll.report_id,
				     st->poll.index, sizeof(value), &value);
	if (ret < 0 || value < 0) {
		*val1 = *val2 = 0;
		return -EINVAL;
	} else {
		if (st->poll.units == HID_USAGE_SENSOR_UNITS_MILLISECOND)
			FUNC1(1000, value, val1, val2);
		else if (st->poll.units == HID_USAGE_SENSOR_UNITS_SECOND)
			FUNC1(1, value, val1, val2);
		else {
			*val1 = *val2 = 0;
			return -EINVAL;
		}
	}

	return IIO_VAL_INT_PLUS_MICRO;
}