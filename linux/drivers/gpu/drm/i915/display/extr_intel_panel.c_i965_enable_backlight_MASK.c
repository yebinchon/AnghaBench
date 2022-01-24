#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_5__ {int max; int /*<<< orphan*/  level; scalar_t__ active_low_pwm; scalar_t__ combination_mode; } ;
struct intel_panel {TYPE_2__ backlight; } ;
struct intel_crtc_state {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct intel_connector {struct intel_panel panel; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {int /*<<< orphan*/  crtc; int /*<<< orphan*/  connector; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;
struct TYPE_6__ {int pipe; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLC_PWM_CTL ; 
 int /*<<< orphan*/  BLC_PWM_CTL2 ; 
 int BLM_COMBINATION_MODE ; 
 int FUNC0 (int) ; 
 int BLM_POLARITY_I965 ; 
 int BLM_PWM_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_connector_state const*,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC6 (int /*<<< orphan*/ ) ; 
 struct intel_connector* FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(const struct intel_crtc_state *crtc_state,
				  const struct drm_connector_state *conn_state)
{
	struct intel_connector *connector = FUNC7(conn_state->connector);
	struct drm_i915_private *dev_priv = FUNC6(connector->base.dev);
	struct intel_panel *panel = &connector->panel;
	enum pipe pipe = FUNC8(conn_state->crtc)->pipe;
	u32 ctl, ctl2, freq;

	ctl2 = FUNC2(BLC_PWM_CTL2);
	if (ctl2 & BLM_PWM_ENABLE) {
		FUNC1("backlight already enabled\n");
		ctl2 &= ~BLM_PWM_ENABLE;
		FUNC3(BLC_PWM_CTL2, ctl2);
	}

	freq = panel->backlight.max;
	if (panel->backlight.combination_mode)
		freq /= 0xff;

	ctl = freq << 16;
	FUNC3(BLC_PWM_CTL, ctl);

	ctl2 = FUNC0(pipe);
	if (panel->backlight.combination_mode)
		ctl2 |= BLM_COMBINATION_MODE;
	if (panel->backlight.active_low_pwm)
		ctl2 |= BLM_POLARITY_I965;
	FUNC3(BLC_PWM_CTL2, ctl2);
	FUNC4(BLC_PWM_CTL2);
	FUNC3(BLC_PWM_CTL2, ctl2 | BLM_PWM_ENABLE);

	FUNC5(conn_state, panel->backlight.level);
}