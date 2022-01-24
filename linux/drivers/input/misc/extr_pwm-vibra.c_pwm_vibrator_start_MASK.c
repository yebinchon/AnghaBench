#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pwm_vibrator {int vcc_on; scalar_t__ pwm; scalar_t__ pwm_dir; int /*<<< orphan*/  direction_duty_cycle; int /*<<< orphan*/  level; int /*<<< orphan*/  vcc; TYPE_2__* input; } ;
struct pwm_state {int enabled; int /*<<< orphan*/  duty_cycle; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device* parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int FUNC1 (scalar_t__,struct pwm_state*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,struct pwm_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct pwm_state*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct pwm_vibrator *vibrator)
{
	struct device *pdev = vibrator->input->dev.parent;
	struct pwm_state state;
	int err;

	if (!vibrator->vcc_on) {
		err = FUNC5(vibrator->vcc);
		if (err) {
			FUNC0(pdev, "failed to enable regulator: %d", err);
			return err;
		}
		vibrator->vcc_on = true;
	}

	FUNC3(vibrator->pwm, &state);
	FUNC4(&state, vibrator->level, 0xffff);
	state.enabled = true;

	err = FUNC1(vibrator->pwm, &state);
	if (err) {
		FUNC0(pdev, "failed to apply pwm state: %d", err);
		return err;
	}

	if (vibrator->pwm_dir) {
		FUNC3(vibrator->pwm_dir, &state);
		state.duty_cycle = vibrator->direction_duty_cycle;
		state.enabled = true;

		err = FUNC1(vibrator->pwm_dir, &state);
		if (err) {
			FUNC0(pdev, "failed to apply dir-pwm state: %d", err);
			FUNC2(vibrator->pwm);
			return err;
		}
	}

	return 0;
}