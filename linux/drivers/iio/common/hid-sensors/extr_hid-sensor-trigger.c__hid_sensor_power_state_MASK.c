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
struct TYPE_6__ {int /*<<< orphan*/  index; int /*<<< orphan*/  report_id; scalar_t__ logical_minimum; } ;
struct TYPE_4__ {int /*<<< orphan*/  index; int /*<<< orphan*/  report_id; scalar_t__ logical_minimum; } ;
struct hid_sensor_common {TYPE_3__ power_state; int /*<<< orphan*/  hsdev; TYPE_2__* pdev; TYPE_1__ report_state; int /*<<< orphan*/  data_ready; } ;
typedef  int /*<<< orphan*/  state_val ;
typedef  int s32 ;
typedef  int /*<<< orphan*/  report_val ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  HID_USAGE_SENSOR_PROP_POWER_STATE_D0_FULL_POWER_ENUM ; 
 int /*<<< orphan*/  HID_USAGE_SENSOR_PROP_POWER_STATE_D4_POWER_OFF_ENUM ; 
 int /*<<< orphan*/  HID_USAGE_SENSOR_PROP_REPORTING_STATE_ALL_EVENTS_ENUM ; 
 int /*<<< orphan*/  HID_USAGE_SENSOR_PROP_REPORTING_STATE_NO_EVENTS_ENUM ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct hid_sensor_common*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 

__attribute__((used)) static int FUNC10(struct hid_sensor_common *st, bool state)
{
	int state_val;
	int report_val;
	s32 poll_value = 0;

	if (state) {
		if (FUNC7(st->hsdev))
			return -EIO;

		FUNC1(&st->data_ready);

		state_val = FUNC2(st->hsdev,
			st->power_state.report_id,
			st->power_state.index,
			HID_USAGE_SENSOR_PROP_POWER_STATE_D0_FULL_POWER_ENUM);
		report_val = FUNC2(st->hsdev,
			st->report_state.report_id,
			st->report_state.index,
			HID_USAGE_SENSOR_PROP_REPORTING_STATE_ALL_EVENTS_ENUM);

		poll_value = FUNC3(st);
	} else {
		int val;

		val = FUNC0(&st->data_ready);
		if (val < 0)
			return 0;

		FUNC6(st->hsdev);
		state_val = FUNC2(st->hsdev,
			st->power_state.report_id,
			st->power_state.index,
			HID_USAGE_SENSOR_PROP_POWER_STATE_D4_POWER_OFF_ENUM);
		report_val = FUNC2(st->hsdev,
			st->report_state.report_id,
			st->report_state.index,
			HID_USAGE_SENSOR_PROP_REPORTING_STATE_NO_EVENTS_ENUM);
	}

	if (state_val >= 0) {
		state_val += st->power_state.logical_minimum;
		FUNC9(st->hsdev, st->power_state.report_id,
				       st->power_state.index, sizeof(state_val),
				       &state_val);
	}

	if (report_val >= 0) {
		report_val += st->report_state.logical_minimum;
		FUNC9(st->hsdev, st->report_state.report_id,
				       st->report_state.index,
				       sizeof(report_val),
				       &report_val);
	}

	FUNC5("HID_SENSOR %s set power_state %d report_state %d\n",
		 st->pdev->name, state_val, report_val);

	FUNC8(st->hsdev, st->power_state.report_id,
			       st->power_state.index,
			       sizeof(state_val), &state_val);
	if (state && poll_value)
		FUNC4(poll_value * 2);

	return 0;
}