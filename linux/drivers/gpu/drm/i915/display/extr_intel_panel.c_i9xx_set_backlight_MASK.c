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
typedef  int u8 ;
typedef  int u32 ;
struct TYPE_5__ {int max; scalar_t__ combination_mode; } ;
struct intel_panel {TYPE_2__ backlight; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct intel_connector {struct intel_panel panel; TYPE_1__ base; } ;
struct TYPE_6__ {int /*<<< orphan*/  pdev; } ;
struct drm_i915_private {TYPE_3__ drm; } ;
struct drm_connector_state {int /*<<< orphan*/  connector; } ;

/* Variables and functions */
 int BACKLIGHT_DUTY_CYCLE_MASK ; 
 int BACKLIGHT_DUTY_CYCLE_MASK_PNV ; 
 int /*<<< orphan*/  BLC_PWM_CTL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  LBPC ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct drm_i915_private* FUNC5 (int /*<<< orphan*/ ) ; 
 struct intel_connector* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(const struct drm_connector_state *conn_state, u32 level)
{
	struct intel_connector *connector = FUNC6(conn_state->connector);
	struct drm_i915_private *dev_priv = FUNC5(connector->base.dev);
	struct intel_panel *panel = &connector->panel;
	u32 tmp, mask;

	FUNC3(panel->backlight.max == 0);

	if (panel->backlight.combination_mode) {
		u8 lbpc;

		lbpc = level * 0xfe / panel->backlight.max + 1;
		level /= lbpc;
		FUNC4(dev_priv->drm.pdev, LBPC, lbpc);
	}

	if (FUNC2(dev_priv, 4)) {
		mask = BACKLIGHT_DUTY_CYCLE_MASK;
	} else {
		level <<= 1;
		mask = BACKLIGHT_DUTY_CYCLE_MASK_PNV;
	}

	tmp = FUNC0(BLC_PWM_CTL) & ~mask;
	FUNC1(BLC_PWM_CTL, tmp | level);
}