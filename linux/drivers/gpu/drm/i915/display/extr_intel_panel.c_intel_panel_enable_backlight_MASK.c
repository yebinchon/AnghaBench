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
struct TYPE_6__ {int /*<<< orphan*/  present; } ;
struct intel_panel {TYPE_2__ backlight; } ;
struct TYPE_5__ {int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {TYPE_1__ base; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;
struct intel_connector {struct intel_panel panel; TYPE_3__ base; } ;
struct drm_i915_private {int /*<<< orphan*/  backlight_lock; } ;
struct drm_connector_state {int /*<<< orphan*/  connector; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;
struct TYPE_8__ {int pipe; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_crtc_state const*,struct drm_connector_state const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct drm_i915_private* FUNC5 (int /*<<< orphan*/ ) ; 
 struct intel_connector* FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(const struct intel_crtc_state *crtc_state,
				  const struct drm_connector_state *conn_state)
{
	struct intel_connector *connector = FUNC6(conn_state->connector);
	struct drm_i915_private *dev_priv = FUNC5(connector->base.dev);
	struct intel_panel *panel = &connector->panel;
	enum pipe pipe = FUNC7(crtc_state->base.crtc)->pipe;

	if (!panel->backlight.present)
		return;

	FUNC0("pipe %c\n", FUNC4(pipe));

	FUNC2(&dev_priv->backlight_lock);

	FUNC1(crtc_state, conn_state);

	FUNC3(&dev_priv->backlight_lock);
}