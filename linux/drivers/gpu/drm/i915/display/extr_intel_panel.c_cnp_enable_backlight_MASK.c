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
struct TYPE_4__ {int max; int /*<<< orphan*/  controller; scalar_t__ active_low_pwm; int /*<<< orphan*/  level; } ;
struct intel_panel {TYPE_2__ backlight; } ;
struct intel_crtc_state {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct intel_connector {struct intel_panel panel; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {int /*<<< orphan*/  connector; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int BXT_BLC_PWM_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int BXT_BLC_PWM_POLARITY ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_connector_state const*,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC7 (int /*<<< orphan*/ ) ; 
 struct intel_connector* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(const struct intel_crtc_state *crtc_state,
				 const struct drm_connector_state *conn_state)
{
	struct intel_connector *connector = FUNC8(conn_state->connector);
	struct drm_i915_private *dev_priv = FUNC7(connector->base.dev);
	struct intel_panel *panel = &connector->panel;
	u32 pwm_ctl;

	pwm_ctl = FUNC3(FUNC0(panel->backlight.controller));
	if (pwm_ctl & BXT_BLC_PWM_ENABLE) {
		FUNC2("backlight already enabled\n");
		pwm_ctl &= ~BXT_BLC_PWM_ENABLE;
		FUNC4(FUNC0(panel->backlight.controller),
			   pwm_ctl);
	}

	FUNC4(FUNC1(panel->backlight.controller),
		   panel->backlight.max);

	FUNC6(conn_state, panel->backlight.level);

	pwm_ctl = 0;
	if (panel->backlight.active_low_pwm)
		pwm_ctl |= BXT_BLC_PWM_POLARITY;

	FUNC4(FUNC0(panel->backlight.controller), pwm_ctl);
	FUNC5(FUNC0(panel->backlight.controller));
	FUNC4(FUNC0(panel->backlight.controller),
		   pwm_ctl | BXT_BLC_PWM_ENABLE);
}