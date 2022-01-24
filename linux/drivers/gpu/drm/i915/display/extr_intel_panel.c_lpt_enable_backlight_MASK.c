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
struct TYPE_4__ {int max; int /*<<< orphan*/  level; scalar_t__ active_low_pwm; scalar_t__ alternate_pwm_increment; } ;
struct intel_panel {TYPE_2__ backlight; } ;
struct intel_crtc_state {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct intel_connector {struct intel_panel panel; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {int /*<<< orphan*/  connector; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLC_PWM_PCH_CTL1 ; 
 int /*<<< orphan*/  BLC_PWM_PCH_CTL2 ; 
 int BLM_PCH_OVERRIDE_ENABLE ; 
 int BLM_PCH_POLARITY ; 
 int BLM_PCH_PWM_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int LPT_PWM_GRANULARITY ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SOUTH_CHICKEN1 ; 
 int /*<<< orphan*/  SOUTH_CHICKEN2 ; 
 int SPT_PWM_GRANULARITY ; 
 int /*<<< orphan*/  FUNC5 (struct drm_connector_state const*,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC6 (int /*<<< orphan*/ ) ; 
 struct intel_connector* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(const struct intel_crtc_state *crtc_state,
				 const struct drm_connector_state *conn_state)
{
	struct intel_connector *connector = FUNC7(conn_state->connector);
	struct drm_i915_private *dev_priv = FUNC6(connector->base.dev);
	struct intel_panel *panel = &connector->panel;
	u32 pch_ctl1, pch_ctl2, schicken;

	pch_ctl1 = FUNC2(BLC_PWM_PCH_CTL1);
	if (pch_ctl1 & BLM_PCH_PWM_ENABLE) {
		FUNC0("pch backlight already enabled\n");
		pch_ctl1 &= ~BLM_PCH_PWM_ENABLE;
		FUNC3(BLC_PWM_PCH_CTL1, pch_ctl1);
	}

	if (FUNC1(dev_priv)) {
		schicken = FUNC2(SOUTH_CHICKEN2);
		if (panel->backlight.alternate_pwm_increment)
			schicken |= LPT_PWM_GRANULARITY;
		else
			schicken &= ~LPT_PWM_GRANULARITY;
		FUNC3(SOUTH_CHICKEN2, schicken);
	} else {
		schicken = FUNC2(SOUTH_CHICKEN1);
		if (panel->backlight.alternate_pwm_increment)
			schicken |= SPT_PWM_GRANULARITY;
		else
			schicken &= ~SPT_PWM_GRANULARITY;
		FUNC3(SOUTH_CHICKEN1, schicken);
	}

	pch_ctl2 = panel->backlight.max << 16;
	FUNC3(BLC_PWM_PCH_CTL2, pch_ctl2);

	pch_ctl1 = 0;
	if (panel->backlight.active_low_pwm)
		pch_ctl1 |= BLM_PCH_POLARITY;

	/* After LPT, override is the default. */
	if (FUNC1(dev_priv))
		pch_ctl1 |= BLM_PCH_OVERRIDE_ENABLE;

	FUNC3(BLC_PWM_PCH_CTL1, pch_ctl1);
	FUNC4(BLC_PWM_PCH_CTL1);
	FUNC3(BLC_PWM_PCH_CTL1, pch_ctl1 | BLM_PCH_PWM_ENABLE);

	/* This won't stick until the above enable. */
	FUNC5(conn_state, panel->backlight.level);
}