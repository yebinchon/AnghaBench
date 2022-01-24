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
struct pwm_beeper {int bell_frequency; int /*<<< orphan*/  work; int /*<<< orphan*/  suspended; scalar_t__ period; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int EV_SND ; 
 scalar_t__ FUNC0 (int) ; 
#define  SND_BELL 129 
#define  SND_TONE 128 
 struct pwm_beeper* FUNC1 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct input_dev *input,
			    unsigned int type, unsigned int code, int value)
{
	struct pwm_beeper *beeper = FUNC1(input);

	if (type != EV_SND || value < 0)
		return -EINVAL;

	switch (code) {
	case SND_BELL:
		value = value ? beeper->bell_frequency : 0;
		break;
	case SND_TONE:
		break;
	default:
		return -EINVAL;
	}

	if (value == 0)
		beeper->period = 0;
	else
		beeper->period = FUNC0(value);

	if (!beeper->suspended)
		FUNC2(&beeper->work);

	return 0;
}