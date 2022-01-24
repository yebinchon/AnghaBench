#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct intel_connector {int /*<<< orphan*/  port; } ;
struct drm_dp_mst_topology_mgr {int dummy; } ;
struct drm_crtc_state {scalar_t__ enable; } ;
struct drm_crtc {int dummy; } ;
struct drm_connector_state {int /*<<< orphan*/  best_encoder; struct drm_crtc* crtc; } ;
struct drm_connector {int dummy; } ;
struct drm_atomic_state {int dummy; } ;
struct TYPE_6__ {TYPE_2__* primary; } ;
struct TYPE_4__ {struct drm_dp_mst_topology_mgr mst_mgr; } ;
struct TYPE_5__ {TYPE_1__ dp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_crtc_state*) ; 
 struct drm_connector_state* FUNC1 (struct drm_atomic_state*,struct drm_connector*) ; 
 struct drm_crtc_state* FUNC2 (struct drm_atomic_state*,struct drm_crtc*) ; 
 struct drm_connector_state* FUNC3 (struct drm_atomic_state*,struct drm_connector*) ; 
 int FUNC4 (struct drm_atomic_state*,struct drm_dp_mst_topology_mgr*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct drm_connector*,struct drm_atomic_state*) ; 
 struct intel_connector* FUNC7 (struct drm_connector*) ; 

__attribute__((used)) static int
FUNC8(struct drm_connector *connector,
			  struct drm_atomic_state *state)
{
	struct drm_connector_state *new_conn_state =
		FUNC1(state, connector);
	struct drm_connector_state *old_conn_state =
		FUNC3(state, connector);
	struct intel_connector *intel_connector =
		FUNC7(connector);
	struct drm_crtc *new_crtc = new_conn_state->crtc;
	struct drm_crtc_state *crtc_state;
	struct drm_dp_mst_topology_mgr *mgr;
	int ret;

	ret = FUNC6(connector, state);
	if (ret)
		return ret;

	if (!old_conn_state->crtc)
		return 0;

	/* We only want to free VCPI if this state disables the CRTC on this
	 * connector
	 */
	if (new_crtc) {
		crtc_state = FUNC2(state, new_crtc);

		if (!crtc_state ||
		    !FUNC0(crtc_state) ||
		    crtc_state->enable)
			return 0;
	}

	mgr = &FUNC5(old_conn_state->best_encoder)->primary->dp.mst_mgr;
	ret = FUNC4(state, mgr,
					       intel_connector->port);

	return ret;
}