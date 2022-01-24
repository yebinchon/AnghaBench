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
typedef  int u32 ;
struct TYPE_4__ {int combination_mode; int active_low_pwm; int max; int enabled; int /*<<< orphan*/  min; int /*<<< orphan*/  level; } ;
struct intel_panel {TYPE_2__ backlight; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct intel_connector {struct intel_panel panel; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int /*<<< orphan*/  BLC_PWM_CTL ; 
 int /*<<< orphan*/  BLC_PWM_CTL2 ; 
 int BLM_COMBINATION_MODE ; 
 int BLM_POLARITY_I965 ; 
 int BLM_PWM_ENABLE ; 
 int ENODEV ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct intel_connector*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_connector*) ; 
 int FUNC4 (struct intel_connector*) ; 
 int FUNC5 (struct intel_connector*,int) ; 
 struct drm_i915_private* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct intel_connector *connector, enum pipe unused)
{
	struct drm_i915_private *dev_priv = FUNC6(connector->base.dev);
	struct intel_panel *panel = &connector->panel;
	u32 ctl, ctl2, val;

	ctl2 = FUNC0(BLC_PWM_CTL2);
	panel->backlight.combination_mode = ctl2 & BLM_COMBINATION_MODE;
	panel->backlight.active_low_pwm = ctl2 & BLM_POLARITY_I965;

	ctl = FUNC0(BLC_PWM_CTL);
	panel->backlight.max = ctl >> 16;

	if (!panel->backlight.max)
		panel->backlight.max = FUNC2(connector);

	if (!panel->backlight.max)
		return -ENODEV;

	if (panel->backlight.combination_mode)
		panel->backlight.max *= 0xff;

	panel->backlight.min = FUNC3(connector);

	val = FUNC4(connector);
	val = FUNC5(connector, val);
	panel->backlight.level = FUNC1(val, panel->backlight.min,
				       panel->backlight.max);

	panel->backlight.enabled = ctl2 & BLM_PWM_ENABLE;

	return 0;
}