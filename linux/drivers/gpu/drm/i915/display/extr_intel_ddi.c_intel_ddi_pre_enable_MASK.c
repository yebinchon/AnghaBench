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
struct intel_lspcon {scalar_t__ active; } ;
struct intel_encoder {int /*<<< orphan*/  base; } ;
struct intel_digital_port {int /*<<< orphan*/  (* set_infoframes ) (struct intel_encoder*,int /*<<< orphan*/ ,struct intel_crtc_state const*,struct drm_connector_state const*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {int /*<<< orphan*/  has_infoframe; int /*<<< orphan*/  has_pch_encoder; TYPE_1__ base; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct intel_crtc {int pipe; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {int dummy; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int FUNC0 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  INTEL_OUTPUT_HDMI ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct intel_digital_port* FUNC2 (int /*<<< orphan*/ *) ; 
 struct intel_lspcon* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_encoder*,struct intel_crtc_state const*) ; 
 scalar_t__ FUNC5 (struct intel_crtc_state const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_encoder*,struct intel_crtc_state const*,struct drm_connector_state const*) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_encoder*,struct intel_crtc_state const*,struct drm_connector_state const*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct intel_encoder*,int /*<<< orphan*/ ,struct intel_crtc_state const*,struct drm_connector_state const*) ; 
 struct drm_i915_private* FUNC10 (int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct intel_encoder *encoder,
				 const struct intel_crtc_state *crtc_state,
				 const struct drm_connector_state *conn_state)
{
	struct intel_crtc *crtc = FUNC11(crtc_state->base.crtc);
	struct drm_i915_private *dev_priv = FUNC10(crtc->base.dev);
	enum pipe pipe = crtc->pipe;

	/*
	 * When called from DP MST code:
	 * - conn_state will be NULL
	 * - encoder will be the main encoder (ie. mst->primary)
	 * - the main connector associated with this port
	 *   won't be active or linked to a crtc
	 * - crtc_state will be the state of the first stream to
	 *   be activated on this port, and it may not be the same
	 *   stream that will be deactivated last, but each stream
	 *   should have a state that is identical when it comes to
	 *   the DP link parameteres
	 */

	FUNC1(crtc_state->has_pch_encoder);

	if (FUNC0(dev_priv) >= 11)
		FUNC4(encoder, crtc_state);

	FUNC8(dev_priv, pipe, true);

	if (FUNC5(crtc_state, INTEL_OUTPUT_HDMI)) {
		FUNC7(encoder, crtc_state, conn_state);
	} else {
		struct intel_lspcon *lspcon =
				FUNC3(&encoder->base);

		FUNC6(encoder, crtc_state, conn_state);
		if (lspcon->active) {
			struct intel_digital_port *dig_port =
					FUNC2(&encoder->base);

			dig_port->set_infoframes(encoder,
						 crtc_state->has_infoframe,
						 crtc_state, conn_state);
		}
	}
}