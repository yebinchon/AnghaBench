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
struct TYPE_2__ {int /*<<< orphan*/  index; int /*<<< orphan*/  report_id; int /*<<< orphan*/  unit_expo; int /*<<< orphan*/  size; } ;
struct hid_sensor_common {scalar_t__ raw_hystersis; TYPE_1__ sensitivity; int /*<<< orphan*/  hsdev; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__*) ; 

int FUNC3(struct hid_sensor_common *st,
					int val1, int val2)
{
	s32 value;
	int ret;

	if (val1 < 0 || val2 < 0)
		return -EINVAL;

	value = FUNC0(st->sensitivity.size,
				st->sensitivity.unit_expo,
				val1, val2);
	ret = FUNC2(st->hsdev, st->sensitivity.report_id,
				     st->sensitivity.index, sizeof(value),
				     &value);
	if (ret < 0 || value < 0)
		return -EINVAL;

	ret = FUNC1(st->hsdev,
				     st->sensitivity.report_id,
				     st->sensitivity.index, sizeof(value),
				     &value);
	if (ret < 0 || value < 0)
		return -EINVAL;

	st->raw_hystersis = value;

	return 0;
}