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
struct intel_encoder {TYPE_1__ base; } ;
struct intel_digital_port {int /*<<< orphan*/  ddi_io_power_domain; int /*<<< orphan*/  (* set_infoframes ) (struct intel_encoder*,int,struct intel_crtc_state const*,struct drm_connector_state const*) ;struct intel_hdmi hdmi; } ;
struct intel_crtc_state {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {int dummy; } ;

/* Variables and functions */
 struct intel_digital_port* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_encoder*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_crtc_state const*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_encoder*,struct intel_crtc_state const*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_hdmi*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_encoder*,int,struct intel_crtc_state const*,struct drm_connector_state const*) ; 
 struct drm_i915_private* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct intel_encoder *encoder,
					const struct intel_crtc_state *old_crtc_state,
					const struct drm_connector_state *old_conn_state)
{
	struct drm_i915_private *dev_priv = FUNC7(encoder->base.dev);
	struct intel_digital_port *dig_port = FUNC0(&encoder->base);
	struct intel_hdmi *intel_hdmi = &dig_port->hdmi;

	dig_port->set_infoframes(encoder, false,
				 old_crtc_state, old_conn_state);

	FUNC2(old_crtc_state);

	FUNC3(encoder, old_crtc_state);

	FUNC4(dev_priv,
					  dig_port->ddi_io_power_domain);

	FUNC1(encoder);

	FUNC5(intel_hdmi, false);
}