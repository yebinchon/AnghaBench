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
struct TYPE_4__ {int max; scalar_t__ level; int enabled; int /*<<< orphan*/ * pwm; scalar_t__ min; } ;
struct intel_panel {TYPE_2__ backlight; } ;
struct TYPE_3__ {struct drm_device* dev; } ;
struct intel_connector {struct intel_panel panel; TYPE_1__ base; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int /*<<< orphan*/  CRC_PMIC_PWM_PERIOD_NS ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int ENODEV ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct intel_connector *connector,
			       enum pipe pipe)
{
	struct drm_device *dev = connector->base.dev;
	struct intel_panel *panel = &connector->panel;
	int retval;

	/* Get the PWM chip for backlight control */
	panel->backlight.pwm = FUNC5(dev->dev, "pwm_backlight");
	if (FUNC2(panel->backlight.pwm)) {
		FUNC1("Failed to own the pwm chip\n");
		panel->backlight.pwm = NULL;
		return -ENODEV;
	}

	/*
	 * FIXME: pwm_apply_args() should be removed when switching to
	 * the atomic PWM API.
	 */
	FUNC3(panel->backlight.pwm);

	retval = FUNC4(panel->backlight.pwm, CRC_PMIC_PWM_PERIOD_NS,
			    CRC_PMIC_PWM_PERIOD_NS);
	if (retval < 0) {
		FUNC1("Failed to configure the pwm chip\n");
		FUNC7(panel->backlight.pwm);
		panel->backlight.pwm = NULL;
		return retval;
	}

	panel->backlight.min = 0; /* 0% */
	panel->backlight.max = 100; /* 100% */
	panel->backlight.level = FUNC0(
				 FUNC6(panel->backlight.pwm) * 100,
				 CRC_PMIC_PWM_PERIOD_NS);
	panel->backlight.enabled = panel->backlight.level != 0;

	return 0;
}