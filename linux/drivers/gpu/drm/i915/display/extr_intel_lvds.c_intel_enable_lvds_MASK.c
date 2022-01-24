#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct intel_lvds_encoder {int /*<<< orphan*/  reg; } ;
struct TYPE_2__ {struct drm_device* dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct intel_crtc_state {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_connector_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int LVDS_PORT_EN ; 
 int PANEL_POWER_ON ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PP_ON ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_crtc_state const*,struct drm_connector_state const*) ; 
 struct drm_i915_private* FUNC8 (struct drm_device*) ; 
 struct intel_lvds_encoder* FUNC9 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC10(struct intel_encoder *encoder,
			      const struct intel_crtc_state *pipe_config,
			      const struct drm_connector_state *conn_state)
{
	struct drm_device *dev = encoder->base.dev;
	struct intel_lvds_encoder *lvds_encoder = FUNC9(&encoder->base);
	struct drm_i915_private *dev_priv = FUNC8(dev);

	FUNC2(lvds_encoder->reg, FUNC1(lvds_encoder->reg) | LVDS_PORT_EN);

	FUNC2(FUNC4(0), FUNC1(FUNC4(0)) | PANEL_POWER_ON);
	FUNC3(lvds_encoder->reg);

	if (FUNC6(dev_priv, FUNC5(0), PP_ON, 5000))
		FUNC0("timed out waiting for panel to power on\n");

	FUNC7(pipe_config, conn_state);
}