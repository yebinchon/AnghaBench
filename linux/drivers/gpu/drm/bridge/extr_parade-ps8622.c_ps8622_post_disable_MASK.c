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
struct ps8622_bridge {int enabled; int /*<<< orphan*/  gpio_rst; scalar_t__ v12; int /*<<< orphan*/  panel; int /*<<< orphan*/  gpio_slp; } ;
struct drm_bridge {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int PS8622_POWER_FALL_T16_MAX_US ; 
 int /*<<< orphan*/  PS8622_POWER_OFF_T17_MS ; 
 struct ps8622_bridge* FUNC1 (struct drm_bridge*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static void FUNC7(struct drm_bridge *bridge)
{
	struct ps8622_bridge *ps8622 = FUNC1(bridge);

	if (!ps8622->enabled)
		return;

	ps8622->enabled = false;

	/*
	 * This doesn't matter if the regulators are turned off, but something
	 * else might keep them on. In that case, we want to assert the slp gpio
	 * to lower power.
	 */
	FUNC3(ps8622->gpio_slp, 0);

	if (FUNC2(ps8622->panel)) {
		FUNC0("failed to unprepare panel\n");
		return;
	}

	if (ps8622->v12)
		FUNC5(ps8622->v12);

	/*
	 * Sleep for at least the amount of time that it takes the power rail to
	 * fall to prevent asserting the rst gpio from doing anything.
	 */
	FUNC6(PS8622_POWER_FALL_T16_MAX_US,
		     2 * PS8622_POWER_FALL_T16_MAX_US);
	FUNC3(ps8622->gpio_rst, 0);

	FUNC4(PS8622_POWER_OFF_T17_MS);
}