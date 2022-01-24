#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct intel_encoder {int /*<<< orphan*/  base; } ;
struct intel_dp_mst_encoder {struct intel_digital_port* primary; } ;
struct intel_dp {int /*<<< orphan*/  mst_mgr; int /*<<< orphan*/  active_mst_links; } ;
struct intel_digital_port {struct intel_dp dp; } ;
struct intel_crtc_state {scalar_t__ has_audio; } ;
struct intel_connector {int /*<<< orphan*/  port; } ;
struct drm_connector_state {int /*<<< orphan*/  connector; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 struct intel_dp_mst_encoder* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_encoder*,struct intel_crtc_state const*,struct drm_connector_state const*) ; 
 struct intel_connector* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct intel_encoder *encoder,
				 const struct intel_crtc_state *old_crtc_state,
				 const struct drm_connector_state *old_conn_state)
{
	struct intel_dp_mst_encoder *intel_mst = FUNC4(&encoder->base);
	struct intel_digital_port *intel_dig_port = intel_mst->primary;
	struct intel_dp *intel_dp = &intel_dig_port->dp;
	struct intel_connector *connector =
		FUNC6(old_conn_state->connector);
	int ret;

	FUNC0("active links %d\n", intel_dp->active_mst_links);

	FUNC2(&intel_dp->mst_mgr, connector->port);

	ret = FUNC3(&intel_dp->mst_mgr);
	if (ret) {
		FUNC1("failed to update payload %d\n", ret);
	}
	if (old_crtc_state->has_audio)
		FUNC5(encoder,
					  old_crtc_state, old_conn_state);
}