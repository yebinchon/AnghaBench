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
struct pidff_device {int /*<<< orphan*/  hid; TYPE_1__* block_load; } ;
struct input_dev {int /*<<< orphan*/  ffbit; } ;
struct TYPE_2__ {int /*<<< orphan*/  value; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FF_CONSTANT ; 
 int /*<<< orphan*/  FF_DAMPER ; 
 int /*<<< orphan*/  FF_FRICTION ; 
 int /*<<< orphan*/  FF_GAIN ; 
 int /*<<< orphan*/  FF_INERTIA ; 
 int /*<<< orphan*/  FF_PERIODIC ; 
 int /*<<< orphan*/  FF_RAMP ; 
 int /*<<< orphan*/  FF_SPRING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PID_BLOCK_FREE ; 
 int /*<<< orphan*/  PID_BLOCK_LOAD ; 
 int /*<<< orphan*/  PID_DEVICE_GAIN ; 
 size_t PID_EFFECT_BLOCK_INDEX ; 
 int /*<<< orphan*/  PID_EFFECT_OPERATION ; 
 int /*<<< orphan*/  PID_POOL ; 
 int /*<<< orphan*/  PID_SET_CONDITION ; 
 int /*<<< orphan*/  PID_SET_CONSTANT ; 
 int /*<<< orphan*/  PID_SET_EFFECT ; 
 int /*<<< orphan*/  PID_SET_ENVELOPE ; 
 int /*<<< orphan*/  PID_SET_PERIODIC ; 
 int /*<<< orphan*/  PID_SET_RAMP ; 
 int /*<<< orphan*/  block_free ; 
 int /*<<< orphan*/  block_load ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  device_gain ; 
 int /*<<< orphan*/  effect_operation ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (struct pidff_device*,struct input_dev*) ; 
 scalar_t__ FUNC5 (struct pidff_device*) ; 
 int /*<<< orphan*/  pool ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  set_condition ; 
 int /*<<< orphan*/  set_constant ; 
 int /*<<< orphan*/  set_effect ; 
 int /*<<< orphan*/  set_envelope ; 
 int /*<<< orphan*/  set_periodic ; 
 int /*<<< orphan*/  set_ramp ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct pidff_device *pidff, struct input_dev *dev)
{
	int envelope_ok = 0;

	if (FUNC0(set_effect, PID_SET_EFFECT, 1)) {
		FUNC2(pidff->hid, "unknown set_effect report layout\n");
		return -ENODEV;
	}

	FUNC0(block_load, PID_BLOCK_LOAD, 0);
	if (!pidff->block_load[PID_EFFECT_BLOCK_INDEX].value) {
		FUNC2(pidff->hid, "unknown pid_block_load report layout\n");
		return -ENODEV;
	}

	if (FUNC0(effect_operation, PID_EFFECT_OPERATION, 1)) {
		FUNC2(pidff->hid, "unknown effect_operation report layout\n");
		return -ENODEV;
	}

	if (FUNC0(block_free, PID_BLOCK_FREE, 1)) {
		FUNC2(pidff->hid, "unknown pid_block_free report layout\n");
		return -ENODEV;
	}

	if (!FUNC0(set_envelope, PID_SET_ENVELOPE, 1))
		envelope_ok = 1;

	if (FUNC5(pidff) || FUNC4(pidff, dev))
		return -ENODEV;

	if (!envelope_ok) {
		if (FUNC7(FF_CONSTANT, dev->ffbit))
			FUNC3(pidff->hid,
				 "has constant effect but no envelope\n");
		if (FUNC7(FF_RAMP, dev->ffbit))
			FUNC3(pidff->hid,
				 "has ramp effect but no envelope\n");

		if (FUNC7(FF_PERIODIC, dev->ffbit))
			FUNC3(pidff->hid,
				 "has periodic effect but no envelope\n");
	}

	if (FUNC8(FF_CONSTANT, dev->ffbit) &&
	    FUNC0(set_constant, PID_SET_CONSTANT, 1)) {
		FUNC3(pidff->hid, "unknown constant effect layout\n");
		FUNC1(FF_CONSTANT, dev->ffbit);
	}

	if (FUNC8(FF_RAMP, dev->ffbit) &&
	    FUNC0(set_ramp, PID_SET_RAMP, 1)) {
		FUNC3(pidff->hid, "unknown ramp effect layout\n");
		FUNC1(FF_RAMP, dev->ffbit);
	}

	if ((FUNC8(FF_SPRING, dev->ffbit) ||
	     FUNC8(FF_DAMPER, dev->ffbit) ||
	     FUNC8(FF_FRICTION, dev->ffbit) ||
	     FUNC8(FF_INERTIA, dev->ffbit)) &&
	    FUNC0(set_condition, PID_SET_CONDITION, 1)) {
		FUNC3(pidff->hid, "unknown condition effect layout\n");
		FUNC1(FF_SPRING, dev->ffbit);
		FUNC1(FF_DAMPER, dev->ffbit);
		FUNC1(FF_FRICTION, dev->ffbit);
		FUNC1(FF_INERTIA, dev->ffbit);
	}

	if (FUNC8(FF_PERIODIC, dev->ffbit) &&
	    FUNC0(set_periodic, PID_SET_PERIODIC, 1)) {
		FUNC3(pidff->hid, "unknown periodic effect layout\n");
		FUNC1(FF_PERIODIC, dev->ffbit);
	}

	FUNC0(pool, PID_POOL, 0);

	if (!FUNC0(device_gain, PID_DEVICE_GAIN, 1))
		FUNC6(FF_GAIN, dev->ffbit);

	return 0;
}