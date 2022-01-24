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
struct hid_sensor_common {int poll_interval; TYPE_1__ poll; int /*<<< orphan*/  hsdev; } ;
typedef  int s32 ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ HID_USAGE_SENSOR_UNITS_MILLISECOND ; 
 scalar_t__ HID_USAGE_SENSOR_UNITS_SECOND ; 
 int HZ_PER_MHZ ; 
 int NSEC_PER_SEC ; 
 int USEC_PER_SEC ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 

int FUNC2(struct hid_sensor_common *st,
				int val1, int val2)
{
	s32 value;
	int ret;

	if (val1 < 0 || val2 < 0)
		return -EINVAL;

	value = val1 * HZ_PER_MHZ + val2;
	if (value) {
		if (st->poll.units == HID_USAGE_SENSOR_UNITS_MILLISECOND)
			value = NSEC_PER_SEC / value;
		else if (st->poll.units == HID_USAGE_SENSOR_UNITS_SECOND)
			value = USEC_PER_SEC / value;
		else
			value = 0;
	}
	ret = FUNC1(st->hsdev, st->poll.report_id,
				     st->poll.index, sizeof(value), &value);
	if (ret < 0 || value < 0)
		return -EINVAL;

	ret = FUNC0(st->hsdev,
				     st->poll.report_id,
				     st->poll.index, sizeof(value), &value);
	if (ret < 0 || value < 0)
		return -EINVAL;

	st->poll_interval = value;

	return 0;
}