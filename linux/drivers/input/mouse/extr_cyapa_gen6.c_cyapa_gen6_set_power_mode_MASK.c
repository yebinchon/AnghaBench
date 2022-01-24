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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u16 ;
struct gen6_interval_setting {scalar_t__ lp1_interval; scalar_t__ lp2_interval; } ;
struct device {int dummy; } ;
struct cyapa {scalar_t__ state; struct gen6_interval_setting gen6_interval_setting; TYPE_1__* client; } ;
typedef  enum cyapa_pm_stage { ____Placeholder_cyapa_pm_stage } cyapa_pm_stage ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 scalar_t__ CYAPA_STATE_GEN6_APP ; 
 int /*<<< orphan*/  GEN6_DISABLE_CMD_IRQ ; 
 int /*<<< orphan*/  GEN6_ENABLE_CMD_IRQ ; 
 scalar_t__ GEN6_POWER_MODE_ACTIVE ; 
 scalar_t__ GEN6_POWER_MODE_BTN_ONLY ; 
 scalar_t__ GEN6_POWER_MODE_LP_MODE1 ; 
 scalar_t__ GEN6_POWER_MODE_LP_MODE2 ; 
 int /*<<< orphan*/  PIP_DEEP_SLEEP_STATE_OFF ; 
 int /*<<< orphan*/  PIP_DEEP_SLEEP_STATE_ON ; 
 scalar_t__ FUNC0 (struct cyapa*) ; 
 scalar_t__ FUNC1 (struct cyapa*) ; 
 int /*<<< orphan*/  FUNC2 (struct cyapa*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct cyapa*,scalar_t__) ; 
 scalar_t__ FUNC4 (struct cyapa*) ; 
 scalar_t__ PWR_MODE_BTN_ONLY ; 
 scalar_t__ PWR_MODE_FULL_ACTIVE ; 
 scalar_t__ PWR_MODE_OFF ; 
 scalar_t__ UNINIT_PWR_MODE ; 
 scalar_t__ UNINIT_SLEEP_TIME ; 
 int FUNC5 (struct cyapa*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct cyapa*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct cyapa*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct cyapa*,struct gen6_interval_setting*) ; 
 int /*<<< orphan*/  FUNC9 (struct cyapa*,struct gen6_interval_setting*) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct device*,char*,scalar_t__,...) ; 

__attribute__((used)) static int FUNC12(struct cyapa *cyapa,
		u8 power_mode, u16 sleep_time, enum cyapa_pm_stage pm_stage)
{
	struct device *dev = &cyapa->client->dev;
	struct gen6_interval_setting *interval_setting =
			&cyapa->gen6_interval_setting;
	u8 lp_mode;
	int error;

	if (cyapa->state != CYAPA_STATE_GEN6_APP)
		return 0;

	if (FUNC0(cyapa) == UNINIT_PWR_MODE) {
		/*
		 * Assume TP in deep sleep mode when driver is loaded,
		 * avoid driver unload and reload command IO issue caused by TP
		 * has been set into deep sleep mode when unloading.
		 */
		FUNC2(cyapa, PWR_MODE_OFF);
	}

	if (FUNC4(cyapa) &&
		FUNC0(cyapa) != PWR_MODE_OFF)
		FUNC3(cyapa, UNINIT_SLEEP_TIME);

	if (FUNC0(cyapa) == power_mode) {
		if (power_mode == PWR_MODE_OFF ||
			power_mode == PWR_MODE_FULL_ACTIVE ||
			power_mode == PWR_MODE_BTN_ONLY ||
			FUNC1(cyapa) == sleep_time) {
			/* Has in correct power mode state, early return. */
			return 0;
		}
	}

	if (power_mode == PWR_MODE_OFF) {
		FUNC6(cyapa, GEN6_DISABLE_CMD_IRQ);

		error = FUNC7(cyapa, PIP_DEEP_SLEEP_STATE_OFF);
		if (error) {
			FUNC11(dev, "enter deep sleep fail: %d\n", error);
			return error;
		}

		FUNC2(cyapa, PWR_MODE_OFF);
		return 0;
	}

	/*
	 * When trackpad in power off mode, it cannot change to other power
	 * state directly, must be wake up from sleep firstly, then
	 * continue to do next power sate change.
	 */
	if (FUNC0(cyapa) == PWR_MODE_OFF) {
		error = FUNC7(cyapa, PIP_DEEP_SLEEP_STATE_ON);
		if (error) {
			FUNC11(dev, "deep sleep wake fail: %d\n", error);
			return error;
		}
	}

	/*
	 * Disable device assert interrupts for command response to avoid
	 * disturbing system suspending or hibernating process.
	 */
	FUNC6(cyapa, GEN6_DISABLE_CMD_IRQ);

	if (power_mode == PWR_MODE_FULL_ACTIVE) {
		error = FUNC5(cyapa,
				GEN6_POWER_MODE_ACTIVE);
		if (error) {
			FUNC11(dev, "change to active fail: %d\n", error);
			goto out;
		}

		FUNC2(cyapa, PWR_MODE_FULL_ACTIVE);

		/* Sync the interval setting from device. */
		FUNC8(cyapa, interval_setting);

	} else if (power_mode == PWR_MODE_BTN_ONLY) {
		error = FUNC5(cyapa,
				GEN6_POWER_MODE_BTN_ONLY);
		if (error) {
			FUNC11(dev, "fail to button only mode: %d\n", error);
			goto out;
		}

		FUNC2(cyapa, PWR_MODE_BTN_ONLY);
	} else {
		/*
		 * Gen6 internally supports to 2 low power scan interval time,
		 * so can help to switch power mode quickly.
		 * such as runtime suspend and system suspend.
		 */
		if (interval_setting->lp1_interval == sleep_time) {
			lp_mode = GEN6_POWER_MODE_LP_MODE1;
		} else if (interval_setting->lp2_interval == sleep_time) {
			lp_mode = GEN6_POWER_MODE_LP_MODE2;
		} else {
			if (interval_setting->lp1_interval == 0) {
				interval_setting->lp1_interval = sleep_time;
				lp_mode = GEN6_POWER_MODE_LP_MODE1;
			} else {
				interval_setting->lp2_interval = sleep_time;
				lp_mode = GEN6_POWER_MODE_LP_MODE2;
			}
			FUNC9(cyapa,
							interval_setting);
		}

		error = FUNC5(cyapa, lp_mode);
		if (error) {
			FUNC11(dev, "set power state to 0x%02x failed: %d\n",
				lp_mode, error);
			goto out;
		}

		FUNC3(cyapa, sleep_time);
		FUNC2(cyapa,
			FUNC10(sleep_time));
	}

out:
	FUNC6(cyapa, GEN6_ENABLE_CMD_IRQ);
	return error;
}