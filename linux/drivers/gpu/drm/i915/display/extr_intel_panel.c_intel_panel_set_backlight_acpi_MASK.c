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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_8__ {scalar_t__ max; scalar_t__ enabled; TYPE_3__* device; int /*<<< orphan*/  level; int /*<<< orphan*/  present; } ;
struct intel_panel {TYPE_4__ backlight; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct intel_connector {struct intel_panel panel; TYPE_1__ base; } ;
struct drm_i915_private {int /*<<< orphan*/  backlight_lock; } ;
struct drm_connector_state {int /*<<< orphan*/  crtc; int /*<<< orphan*/  connector; } ;
struct TYPE_6__ {int /*<<< orphan*/  max_brightness; int /*<<< orphan*/  brightness; } ;
struct TYPE_7__ {TYPE_2__ props; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_connector*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_connector_state const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_connector*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC6 (int /*<<< orphan*/ ) ; 
 struct intel_connector* FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(const struct drm_connector_state *conn_state,
				    u32 user_level, u32 user_max)
{
	struct intel_connector *connector = FUNC7(conn_state->connector);
	struct drm_i915_private *dev_priv = FUNC6(connector->base.dev);
	struct intel_panel *panel = &connector->panel;
	u32 hw_level;

	/*
	 * Lack of crtc may occur during driver init because
	 * connection_mutex isn't held across the entire backlight
	 * setup + modeset readout, and the BIOS can issue the
	 * requests at any time.
	 */
	if (!panel->backlight.present || !conn_state->crtc)
		return;

	FUNC3(&dev_priv->backlight_lock);

	FUNC0(panel->backlight.max == 0);

	hw_level = FUNC1(connector, user_level, user_max);
	panel->backlight.level = hw_level;

	if (panel->backlight.device)
		panel->backlight.device->props.brightness =
			FUNC5(connector,
					 panel->backlight.level,
					 panel->backlight.device->props.max_brightness);

	if (panel->backlight.enabled)
		FUNC2(conn_state, hw_level);

	FUNC4(&dev_priv->backlight_lock);
}