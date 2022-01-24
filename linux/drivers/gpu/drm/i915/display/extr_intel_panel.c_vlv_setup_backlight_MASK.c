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
struct TYPE_4__ {int active_low_pwm; int max; int enabled; int /*<<< orphan*/  min; int /*<<< orphan*/  level; } ;
struct intel_panel {TYPE_2__ backlight; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct intel_connector {struct intel_panel panel; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int BLM_POLARITY_I965 ; 
 int BLM_PWM_ENABLE ; 
 int ENODEV ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int PIPE_A ; 
 int PIPE_B ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct intel_connector*) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_connector*) ; 
 int FUNC8 (struct intel_connector*,int) ; 
 struct drm_i915_private* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct intel_connector *connector, enum pipe pipe)
{
	struct drm_i915_private *dev_priv = FUNC9(connector->base.dev);
	struct intel_panel *panel = &connector->panel;
	u32 ctl, ctl2, val;

	if (FUNC3(pipe != PIPE_A && pipe != PIPE_B))
		return -ENODEV;

	ctl2 = FUNC0(FUNC2(pipe));
	panel->backlight.active_low_pwm = ctl2 & BLM_POLARITY_I965;

	ctl = FUNC0(FUNC1(pipe));
	panel->backlight.max = ctl >> 16;

	if (!panel->backlight.max)
		panel->backlight.max = FUNC6(connector);

	if (!panel->backlight.max)
		return -ENODEV;

	panel->backlight.min = FUNC7(connector);

	val = FUNC4(dev_priv, pipe);
	val = FUNC8(connector, val);
	panel->backlight.level = FUNC5(val, panel->backlight.min,
				       panel->backlight.max);

	panel->backlight.enabled = ctl2 & BLM_PWM_ENABLE;

	return 0;
}