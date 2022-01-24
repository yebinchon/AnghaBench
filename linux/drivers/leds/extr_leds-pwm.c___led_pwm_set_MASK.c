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
struct led_pwm_data {int duty; int /*<<< orphan*/  pwm; int /*<<< orphan*/  period; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct led_pwm_data *led_dat)
{
	int new_duty = led_dat->duty;

	FUNC0(led_dat->pwm, new_duty, led_dat->period);

	if (new_duty == 0)
		FUNC1(led_dat->pwm);
	else
		FUNC2(led_dat->pwm);
}