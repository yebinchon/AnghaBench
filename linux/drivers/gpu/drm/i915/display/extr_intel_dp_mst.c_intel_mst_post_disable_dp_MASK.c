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
struct intel_encoder {int /*<<< orphan*/  base; } ;
struct intel_dp_mst_encoder {int /*<<< orphan*/ * connector; struct intel_digital_port* primary; } ;
struct intel_dp {scalar_t__ active_mst_links; int /*<<< orphan*/  mst_mgr; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* post_disable ) (TYPE_1__*,struct intel_crtc_state const*,int /*<<< orphan*/ *) ;} ;
struct intel_digital_port {TYPE_1__ base; struct intel_dp dp; } ;
struct intel_crtc_state {int dummy; } ;
struct intel_connector {int /*<<< orphan*/  port; } ;
struct drm_connector_state {int /*<<< orphan*/  connector; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  DRM_MODE_DPMS_OFF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct intel_dp_mst_encoder* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_crtc_state const*) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_dp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,struct intel_crtc_state const*,int /*<<< orphan*/ *) ; 
 struct intel_connector* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct intel_encoder *encoder,
				      const struct intel_crtc_state *old_crtc_state,
				      const struct drm_connector_state *old_conn_state)
{
	struct intel_dp_mst_encoder *intel_mst = FUNC5(&encoder->base);
	struct intel_digital_port *intel_dig_port = intel_mst->primary;
	struct intel_dp *intel_dp = &intel_dig_port->dp;
	struct intel_connector *connector =
		FUNC9(old_conn_state->connector);

	FUNC6(old_crtc_state);

	/* this can fail */
	FUNC1(&intel_dp->mst_mgr);
	/* and this can also fail */
	FUNC4(&intel_dp->mst_mgr);

	FUNC2(&intel_dp->mst_mgr, connector->port);

	/*
	 * Power down mst path before disabling the port, otherwise we end
	 * up getting interrupts from the sink upon detecting link loss.
	 */
	FUNC3(&intel_dp->mst_mgr, connector->port,
				     false);

	intel_dp->active_mst_links--;

	intel_mst->connector = NULL;
	if (intel_dp->active_mst_links == 0) {
		FUNC7(intel_dp, DRM_MODE_DPMS_OFF);
		intel_dig_port->base.post_disable(&intel_dig_port->base,
						  old_crtc_state, NULL);
	}

	FUNC0("active links %d\n", intel_dp->active_mst_links);
}