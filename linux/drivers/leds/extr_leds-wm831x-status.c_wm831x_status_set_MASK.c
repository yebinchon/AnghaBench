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
struct wm831x_status {int reg_val; int src; int blink_time; int blink_cyc; scalar_t__ brightness; int /*<<< orphan*/  mutex; int /*<<< orphan*/  reg; int /*<<< orphan*/  wm831x; int /*<<< orphan*/  value_lock; scalar_t__ blink; } ;

/* Variables and functions */
 scalar_t__ LED_OFF ; 
 int WM831X_LED_DUR_MASK ; 
 int WM831X_LED_DUR_SHIFT ; 
 int WM831X_LED_DUTY_CYC_MASK ; 
 int WM831X_LED_MODE_MASK ; 
 int WM831X_LED_MODE_SHIFT ; 
 int WM831X_LED_SRC_MASK ; 
 int WM831X_LED_SRC_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct wm831x_status *led)
{
	unsigned long flags;

	FUNC0(&led->mutex);

	led->reg_val &= ~(WM831X_LED_SRC_MASK | WM831X_LED_MODE_MASK |
			  WM831X_LED_DUTY_CYC_MASK | WM831X_LED_DUR_MASK);

	FUNC2(&led->value_lock, flags);

	led->reg_val |= led->src << WM831X_LED_SRC_SHIFT;
	if (led->blink) {
		led->reg_val |= 2 << WM831X_LED_MODE_SHIFT;
		led->reg_val |= led->blink_time << WM831X_LED_DUR_SHIFT;
		led->reg_val |= led->blink_cyc;
	} else {
		if (led->brightness != LED_OFF)
			led->reg_val |= 1 << WM831X_LED_MODE_SHIFT;
	}

	FUNC3(&led->value_lock, flags);

	FUNC4(led->wm831x, led->reg, led->reg_val);

	FUNC1(&led->mutex);
}