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
 int BLM_LEGACY_MODE ; 
 int BLM_POLARITY_PNV ; 
 int ENODEV ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct intel_connector*) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_connector*) ; 
 int FUNC8 (struct intel_connector*) ; 
 int FUNC9 (struct intel_connector*,int) ; 
 struct drm_i915_private* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct intel_connector *connector, enum pipe unused)
{
	struct drm_i915_private *dev_priv = FUNC10(connector->base.dev);
	struct intel_panel *panel = &connector->panel;
	u32 ctl, val;

	ctl = FUNC0(BLC_PWM_CTL);

	if (FUNC1(dev_priv, 2) || FUNC2(dev_priv) || FUNC3(dev_priv))
		panel->backlight.combination_mode = ctl & BLM_LEGACY_MODE;

	if (FUNC4(dev_priv))
		panel->backlight.active_low_pwm = ctl & BLM_POLARITY_PNV;

	panel->backlight.max = ctl >> 17;

	if (!panel->backlight.max) {
		panel->backlight.max = FUNC6(connector);
		panel->backlight.max >>= 1;
	}

	if (!panel->backlight.max)
		return -ENODEV;

	if (panel->backlight.combination_mode)
		panel->backlight.max *= 0xff;

	panel->backlight.min = FUNC7(connector);

	val = FUNC8(connector);
	val = FUNC9(connector, val);
	panel->backlight.level = FUNC5(val, panel->backlight.min,
				       panel->backlight.max);

	panel->backlight.enabled = val != 0;

	return 0;
}