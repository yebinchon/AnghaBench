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
struct TYPE_3__ {int controller; } ;
struct intel_panel {TYPE_1__ backlight; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct intel_connector {struct intel_panel panel; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {int /*<<< orphan*/  connector; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int BXT_BLC_PWM_ENABLE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  UTIL_PIN_CTL ; 
 int UTIL_PIN_ENABLE ; 
 int /*<<< orphan*/  FUNC3 (struct drm_connector_state const*,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC4 (int /*<<< orphan*/ ) ; 
 struct intel_connector* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(const struct drm_connector_state *old_conn_state)
{
	struct intel_connector *connector = FUNC5(old_conn_state->connector);
	struct drm_i915_private *dev_priv = FUNC4(connector->base.dev);
	struct intel_panel *panel = &connector->panel;
	u32 tmp, val;

	FUNC3(old_conn_state, 0);

	tmp = FUNC1(FUNC0(panel->backlight.controller));
	FUNC2(FUNC0(panel->backlight.controller),
			tmp & ~BXT_BLC_PWM_ENABLE);

	if (panel->backlight.controller == 1) {
		val = FUNC1(UTIL_PIN_CTL);
		val &= ~UTIL_PIN_ENABLE;
		FUNC2(UTIL_PIN_CTL, val);
	}
}