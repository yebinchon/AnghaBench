#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_7__ {int max; scalar_t__ active_low_pwm; int /*<<< orphan*/  level; } ;
struct intel_panel {TYPE_3__ backlight; } ;
struct TYPE_6__ {int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {TYPE_2__ base; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct intel_connector {struct intel_panel panel; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {int /*<<< orphan*/  connector; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;
struct TYPE_8__ {int pipe; } ;

/* Variables and functions */
 int BLM_POLARITY_I965 ; 
 int BLM_PWM_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_connector_state const*,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC7 (int /*<<< orphan*/ ) ; 
 struct intel_connector* FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(const struct intel_crtc_state *crtc_state,
				 const struct drm_connector_state *conn_state)
{
	struct intel_connector *connector = FUNC8(conn_state->connector);
	struct drm_i915_private *dev_priv = FUNC7(connector->base.dev);
	struct intel_panel *panel = &connector->panel;
	enum pipe pipe = FUNC9(crtc_state->base.crtc)->pipe;
	u32 ctl, ctl2;

	ctl2 = FUNC1(FUNC5(pipe));
	if (ctl2 & BLM_PWM_ENABLE) {
		FUNC0("backlight already enabled\n");
		ctl2 &= ~BLM_PWM_ENABLE;
		FUNC2(FUNC5(pipe), ctl2);
	}

	ctl = panel->backlight.max << 16;
	FUNC2(FUNC4(pipe), ctl);

	/* XXX: combine this into above write? */
	FUNC6(conn_state, panel->backlight.level);

	ctl2 = 0;
	if (panel->backlight.active_low_pwm)
		ctl2 |= BLM_POLARITY_I965;
	FUNC2(FUNC5(pipe), ctl2);
	FUNC3(FUNC5(pipe));
	FUNC2(FUNC5(pipe), ctl2 | BLM_PWM_ENABLE);
}