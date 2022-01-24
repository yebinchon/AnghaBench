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
struct ps8622_bridge {int enabled; int /*<<< orphan*/  gpio_rst; int /*<<< orphan*/  gpio_slp; int /*<<< orphan*/  panel; scalar_t__ v12; } ;
struct drm_bridge {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int PS8622_POWER_RISE_T1_MAX_US ; 
 int PS8622_POWER_RISE_T1_MIN_US ; 
 int PS8622_RST_HIGH_T2_MAX_US ; 
 int PS8622_RST_HIGH_T2_MIN_US ; 
 struct ps8622_bridge* FUNC1 (struct drm_bridge*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct ps8622_bridge*) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static void FUNC7(struct drm_bridge *bridge)
{
	struct ps8622_bridge *ps8622 = FUNC1(bridge);
	int ret;

	if (ps8622->enabled)
		return;

	FUNC3(ps8622->gpio_rst, 0);

	if (ps8622->v12) {
		ret = FUNC5(ps8622->v12);
		if (ret)
			FUNC0("fails to enable ps8622->v12");
	}

	if (FUNC2(ps8622->panel)) {
		FUNC0("failed to prepare panel\n");
		return;
	}

	FUNC3(ps8622->gpio_slp, 1);

	/*
	 * T1 is the range of time that it takes for the power to rise after we
	 * enable the lcd/ps8622 fet. T2 is the range of time in which the
	 * data sheet specifies we should deassert the reset pin.
	 *
	 * If it takes T1.max for the power to rise, we need to wait atleast
	 * T2.min before deasserting the reset pin. If it takes T1.min for the
	 * power to rise, we need to wait at most T2.max before deasserting the
	 * reset pin.
	 */
	FUNC6(PS8622_RST_HIGH_T2_MIN_US + PS8622_POWER_RISE_T1_MAX_US,
		     PS8622_RST_HIGH_T2_MAX_US + PS8622_POWER_RISE_T1_MIN_US);

	FUNC3(ps8622->gpio_rst, 1);

	/* wait 20ms after RST high */
	FUNC6(20000, 30000);

	ret = FUNC4(ps8622);
	if (ret) {
		FUNC0("Failed to send config to bridge (%d)\n", ret);
		return;
	}

	ps8622->enabled = true;
}