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
struct intel_sdvo_connector_state {int /*<<< orphan*/  tv; } ;
struct drm_crtc_state {int connectors_changed; } ;
struct drm_connector_state {scalar_t__ crtc; int /*<<< orphan*/  tv; } ;
struct drm_connector {int dummy; } ;
struct drm_atomic_state {int dummy; } ;

/* Variables and functions */
 struct drm_connector_state* FUNC0 (struct drm_atomic_state*,struct drm_connector*) ; 
 struct drm_crtc_state* FUNC1 (struct drm_atomic_state*,scalar_t__) ; 
 struct drm_connector_state* FUNC2 (struct drm_atomic_state*,struct drm_connector*) ; 
 int FUNC3 (struct drm_connector*,struct drm_atomic_state*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct intel_sdvo_connector_state* FUNC5 (struct drm_connector_state*) ; 

__attribute__((used)) static int FUNC6(struct drm_connector *conn,
				   struct drm_atomic_state *state)
{
	struct drm_connector_state *new_conn_state =
		FUNC0(state, conn);
	struct drm_connector_state *old_conn_state =
		FUNC2(state, conn);
	struct intel_sdvo_connector_state *old_state =
		FUNC5(old_conn_state);
	struct intel_sdvo_connector_state *new_state =
		FUNC5(new_conn_state);

	if (new_conn_state->crtc &&
	    (FUNC4(&old_state->tv, &new_state->tv, sizeof(old_state->tv)) ||
	     FUNC4(&old_conn_state->tv, &new_conn_state->tv, sizeof(old_conn_state->tv)))) {
		struct drm_crtc_state *crtc_state =
			FUNC1(state,
						      new_conn_state->crtc);

		crtc_state->connectors_changed = true;
	}

	return FUNC3(conn, state);
}