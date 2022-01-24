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
struct TYPE_4__ {int /*<<< orphan*/  enabled; int /*<<< orphan*/  present; } ;
struct intel_panel {TYPE_2__ backlight; } ;
struct intel_encoder {int dummy; } ;
struct intel_crtc_state {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct intel_connector {struct intel_panel panel; TYPE_1__ base; } ;
struct drm_i915_private {int /*<<< orphan*/  backlight_lock; } ;
struct drm_connector_state {int /*<<< orphan*/  connector; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct intel_crtc_state const*,struct drm_connector_state const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct drm_i915_private* FUNC3 (int /*<<< orphan*/ ) ; 
 struct intel_connector* FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct intel_encoder *encoder,
				  const struct intel_crtc_state *crtc_state,
				  const struct drm_connector_state *conn_state)
{
	struct intel_connector *connector = FUNC4(conn_state->connector);
	struct drm_i915_private *dev_priv = FUNC3(connector->base.dev);
	struct intel_panel *panel = &connector->panel;

	if (!panel->backlight.present)
		return;

	FUNC1(&dev_priv->backlight_lock);
	if (!panel->backlight.enabled)
		FUNC0(crtc_state, conn_state);

	FUNC2(&dev_priv->backlight_lock);
}