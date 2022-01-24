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
struct intel_encoder {int port; TYPE_1__ base; } ;
struct intel_dp {int dummy; } ;
struct intel_crtc_state {scalar_t__ has_audio; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {int dummy; } ;
typedef  enum port { ____Placeholder_port } port ;

/* Variables and functions */
 int FUNC0 (struct drm_i915_private*) ; 
 int PORT_A ; 
 struct intel_dp* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_encoder*,struct intel_crtc_state const*,struct drm_connector_state const*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_dp*,struct intel_crtc_state const*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_crtc_state const*,struct drm_connector_state const*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_dp*,struct intel_crtc_state const*) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_dp*,struct intel_crtc_state const*) ; 
 struct drm_i915_private* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct intel_encoder *encoder,
				const struct intel_crtc_state *crtc_state,
				const struct drm_connector_state *conn_state)
{
	struct drm_i915_private *dev_priv = FUNC8(encoder->base.dev);
	struct intel_dp *intel_dp = FUNC1(&encoder->base);
	enum port port = encoder->port;

	if (port == PORT_A && FUNC0(dev_priv) < 9)
		FUNC3(intel_dp);

	FUNC5(crtc_state, conn_state);
	FUNC7(intel_dp, crtc_state);
	FUNC4(intel_dp, crtc_state);
	FUNC6(intel_dp, crtc_state);

	if (crtc_state->has_audio)
		FUNC2(encoder, crtc_state, conn_state);
}