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
struct pwm_args {int period; } ;
struct max77693_haptic {int pwm_duty; int /*<<< orphan*/  dev; int /*<<< orphan*/  pwm_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct pwm_args*) ; 

__attribute__((used)) static int FUNC3(struct max77693_haptic *haptic)
{
	struct pwm_args pargs;
	int delta;
	int error;

	FUNC2(haptic->pwm_dev, &pargs);
	delta = (pargs.period + haptic->pwm_duty) / 2;
	error = FUNC1(haptic->pwm_dev, delta, pargs.period);
	if (error) {
		FUNC0(haptic->dev, "failed to configure pwm: %d\n", error);
		return error;
	}

	return 0;
}