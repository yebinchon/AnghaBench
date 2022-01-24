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
struct pwm_state {int enabled; unsigned long period; } ;
struct pwm_beeper {int amplifier_on; int /*<<< orphan*/  pwm; int /*<<< orphan*/  amplifier; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct pwm_state*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct pwm_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct pwm_state*,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct pwm_beeper *beeper, unsigned long period)
{
	struct pwm_state state;
	int error;

	FUNC2(beeper->pwm, &state);

	state.enabled = true;
	state.period = period;
	FUNC3(&state, 50, 100);

	error = FUNC0(beeper->pwm, &state);
	if (error)
		return error;

	if (!beeper->amplifier_on) {
		error = FUNC4(beeper->amplifier);
		if (error) {
			FUNC1(beeper->pwm);
			return error;
		}

		beeper->amplifier_on = true;
	}

	return 0;
}