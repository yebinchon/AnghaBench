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
struct TYPE_4__ {int max; int /*<<< orphan*/  level; scalar_t__ active_low_pwm; scalar_t__ combination_mode; } ;
struct intel_panel {TYPE_2__ backlight; } ;
struct intel_crtc_state {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct intel_connector {struct intel_panel panel; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {int /*<<< orphan*/  connector; } ;

/* Variables and functions */
 int BACKLIGHT_DUTY_CYCLE_MASK_PNV ; 
 int /*<<< orphan*/  BLC_HIST_CTL ; 
 int /*<<< orphan*/  BLC_PWM_CTL ; 
 int BLM_HISTOGRAM_ENABLE ; 
 int BLM_LEGACY_MODE ; 
 int BLM_POLARITY_PNV ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
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
	u32 ctl, freq;

	ctl = FUNC1(BLC_PWM_CTL);
	if (ctl & BACKLIGHT_DUTY_CYCLE_MASK_PNV) {
		FUNC0("backlight already enabled\n");
		FUNC2(BLC_PWM_CTL, 0);
	}

	freq = panel->backlight.max;
	if (panel->backlight.combination_mode)
		freq /= 0xff;

	ctl = freq << 17;
	if (panel->backlight.combination_mode)
		ctl |= BLM_LEGACY_MODE;
	if (FUNC4(dev_priv) && panel->backlight.active_low_pwm)
		ctl |= BLM_POLARITY_PNV;

	FUNC2(BLC_PWM_CTL, ctl);
	FUNC5(BLC_PWM_CTL);

	/* XXX: combine this into above write? */
	FUNC6(conn_state, panel->backlight.level);

	/*
	 * Needed to enable backlight on some 855gm models. BLC_HIST_CTL is
	 * 855gm only, but checking for gen2 is safe, as 855gm is the only gen2
	 * that has backlight.
	 */
	if (FUNC3(dev_priv, 2))
		FUNC2(BLC_HIST_CTL, BLM_HISTOGRAM_ENABLE);
}