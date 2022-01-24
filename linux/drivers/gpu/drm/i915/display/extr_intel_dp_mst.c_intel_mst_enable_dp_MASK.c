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
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct intel_encoder {TYPE_2__ base; } ;
struct intel_dp_mst_encoder {struct intel_digital_port* primary; } ;
struct intel_dp {int /*<<< orphan*/  mst_mgr; int /*<<< orphan*/  active_mst_links; } ;
struct TYPE_3__ {int port; } ;
struct intel_digital_port {TYPE_1__ base; struct intel_dp dp; } ;
struct intel_crtc_state {scalar_t__ has_audio; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {int dummy; } ;
typedef  enum port { ____Placeholder_port } port ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DP_TP_STATUS_ACT_SENT ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct intel_dp_mst_encoder* FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_encoder*,struct intel_crtc_state const*,struct drm_connector_state const*) ; 
 scalar_t__ FUNC7 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct drm_i915_private* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct intel_encoder *encoder,
				const struct intel_crtc_state *pipe_config,
				const struct drm_connector_state *conn_state)
{
	struct intel_dp_mst_encoder *intel_mst = FUNC5(&encoder->base);
	struct intel_digital_port *intel_dig_port = intel_mst->primary;
	struct intel_dp *intel_dp = &intel_dig_port->dp;
	struct drm_i915_private *dev_priv = FUNC8(encoder->base.dev);
	enum port port = intel_dig_port->base.port;

	FUNC1("active links %d\n", intel_dp->active_mst_links);

	if (FUNC7(dev_priv, FUNC0(port),
				  DP_TP_STATUS_ACT_SENT, 1))
		FUNC2("Timed out waiting for ACT sent\n");

	FUNC3(&intel_dp->mst_mgr);

	FUNC4(&intel_dp->mst_mgr);
	if (pipe_config->has_audio)
		FUNC6(encoder, pipe_config, conn_state);
}