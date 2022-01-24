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
struct intel_hdmi {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct intel_encoder {int port; TYPE_1__ base; } ;
struct intel_digital_port {int /*<<< orphan*/  (* set_infoframes ) (struct intel_encoder*,int /*<<< orphan*/ ,struct intel_crtc_state const*,struct drm_connector_state const*) ;int /*<<< orphan*/  ddi_io_power_domain; struct intel_hdmi hdmi; } ;
struct intel_crtc_state {int /*<<< orphan*/  has_infoframe; int /*<<< orphan*/  port_clock; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {int dummy; } ;
typedef  enum port { ____Placeholder_port } port ;

/* Variables and functions */
 int FUNC0 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  INTEL_OUTPUT_HDMI ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_encoder*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_encoder*,int,int /*<<< orphan*/ ) ; 
 struct intel_digital_port* FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_encoder*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_digital_port*) ; 
 int /*<<< orphan*/  FUNC9 (struct intel_digital_port*) ; 
 int /*<<< orphan*/  FUNC10 (struct intel_digital_port*) ; 
 int /*<<< orphan*/  FUNC11 (struct intel_encoder*,struct intel_crtc_state const*) ; 
 int /*<<< orphan*/  FUNC12 (struct intel_crtc_state const*) ; 
 int FUNC13 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct intel_hdmi*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct intel_encoder*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct intel_encoder*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct intel_encoder*,int /*<<< orphan*/ ,struct intel_crtc_state const*,struct drm_connector_state const*) ; 
 struct drm_i915_private* FUNC19 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC20(struct intel_encoder *encoder,
				      const struct intel_crtc_state *crtc_state,
				      const struct drm_connector_state *conn_state)
{
	struct intel_digital_port *intel_dig_port = FUNC6(&encoder->base);
	struct intel_hdmi *intel_hdmi = &intel_dig_port->hdmi;
	struct drm_i915_private *dev_priv = FUNC19(encoder->base.dev);
	enum port port = encoder->port;
	int level = FUNC13(dev_priv, port);
	struct intel_digital_port *dig_port = FUNC6(&encoder->base);

	FUNC15(intel_hdmi, true);
	FUNC11(encoder, crtc_state);

	FUNC14(dev_priv, dig_port->ddi_io_power_domain);

	FUNC10(dig_port);
	FUNC8(dig_port);

	if (FUNC0(dev_priv) >= 11)
		FUNC7(encoder, crtc_state->port_clock,
					level, INTEL_OUTPUT_HDMI);
	else if (FUNC1(dev_priv))
		FUNC5(encoder, level, INTEL_OUTPUT_HDMI);
	else if (FUNC3(dev_priv))
		FUNC4(encoder, level, INTEL_OUTPUT_HDMI);
	else
		FUNC16(encoder, level);

	FUNC9(dig_port);

	if (FUNC2(dev_priv))
		FUNC17(encoder, level, INTEL_OUTPUT_HDMI);

	FUNC12(crtc_state);

	intel_dig_port->set_infoframes(encoder,
				       crtc_state->has_infoframe,
				       crtc_state, conn_state);
}