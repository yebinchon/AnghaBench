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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct intel_digital_port {int /*<<< orphan*/  (* set_infoframes ) (struct intel_encoder*,int /*<<< orphan*/ ,struct intel_crtc_state const*,struct drm_connector_state const*) ;} ;
struct intel_crtc_state {int /*<<< orphan*/  has_infoframe; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {int dummy; } ;

/* Variables and functions */
 struct intel_digital_port* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_encoder*,struct intel_crtc_state const*,struct drm_connector_state const*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_encoder*,int /*<<< orphan*/ ,struct intel_crtc_state const*,struct drm_connector_state const*) ; 
 struct drm_i915_private* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_encoder*,struct intel_crtc_state const*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_encoder*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*,struct intel_digital_port*,int) ; 

__attribute__((used)) static void FUNC7(struct intel_encoder *encoder,
				const struct intel_crtc_state *pipe_config,
				const struct drm_connector_state *conn_state)
{
	struct intel_digital_port *dport = FUNC0(&encoder->base);
	struct drm_i915_private *dev_priv = FUNC3(encoder->base.dev);

	FUNC4(encoder, pipe_config);

	/* HDMI 1.0V-2dB */
	FUNC5(encoder, 0x2b245f5f, 0x00002000, 0x5578b83a,
				 0x2b247878);

	dport->set_infoframes(encoder,
			      pipe_config->has_infoframe,
			      pipe_config, conn_state);

	FUNC1(encoder, pipe_config, conn_state);

	FUNC6(dev_priv, dport, 0x0);
}