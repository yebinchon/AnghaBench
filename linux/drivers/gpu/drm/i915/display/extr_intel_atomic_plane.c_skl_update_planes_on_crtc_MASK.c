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
typedef  int /*<<< orphan*/  u32 ;
struct skl_ddb_entry {int dummy; } ;
struct TYPE_6__ {scalar_t__ visible; } ;
struct intel_plane_state {struct intel_plane* linked_plane; scalar_t__ slave; TYPE_3__ base; } ;
struct intel_plane {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  plane_ddb_uv; int /*<<< orphan*/  plane_ddb_y; } ;
struct TYPE_5__ {TYPE_1__ skl; } ;
struct intel_crtc_state {TYPE_2__ wm; int /*<<< orphan*/  update_planes; } ;
struct intel_crtc {int dummy; } ;
struct intel_atomic_state {int dummy; } ;

/* Variables and functions */
 int I915_MAX_PLANES ; 
 struct intel_crtc_state* FUNC0 (struct intel_atomic_state*,struct intel_crtc*) ; 
 struct intel_plane_state* FUNC1 (struct intel_atomic_state*,struct intel_plane*) ; 
 struct intel_crtc_state* FUNC2 (struct intel_atomic_state*,struct intel_crtc*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_plane*,struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_plane*,struct intel_crtc_state*,struct intel_plane_state*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_plane*,struct intel_crtc_state*,struct intel_plane_state*) ; 
 int /*<<< orphan*/  FUNC6 (struct skl_ddb_entry*,int /*<<< orphan*/ ,int) ; 
 struct intel_plane* FUNC7 (struct intel_atomic_state*,struct intel_crtc*,struct skl_ddb_entry*,struct skl_ddb_entry*,int /*<<< orphan*/ *) ; 

void FUNC8(struct intel_atomic_state *state,
			       struct intel_crtc *crtc)
{
	struct intel_crtc_state *old_crtc_state =
		FUNC2(state, crtc);
	struct intel_crtc_state *new_crtc_state =
		FUNC0(state, crtc);
	struct skl_ddb_entry entries_y[I915_MAX_PLANES];
	struct skl_ddb_entry entries_uv[I915_MAX_PLANES];
	u32 update_mask = new_crtc_state->update_planes;
	struct intel_plane *plane;

	FUNC6(entries_y, old_crtc_state->wm.skl.plane_ddb_y,
	       sizeof(old_crtc_state->wm.skl.plane_ddb_y));
	FUNC6(entries_uv, old_crtc_state->wm.skl.plane_ddb_uv,
	       sizeof(old_crtc_state->wm.skl.plane_ddb_uv));

	while ((plane = FUNC7(state, crtc,
						 entries_y, entries_uv,
						 &update_mask))) {
		struct intel_plane_state *new_plane_state =
			FUNC1(state, plane);

		if (new_plane_state->base.visible) {
			FUNC4(plane, new_crtc_state, new_plane_state);
		} else if (new_plane_state->slave) {
			struct intel_plane *master =
				new_plane_state->linked_plane;

			/*
			 * We update the slave plane from this function because
			 * programming it from the master plane's update_plane
			 * callback runs into issues when the Y plane is
			 * reassigned, disabled or used by a different plane.
			 *
			 * The slave plane is updated with the master plane's
			 * plane_state.
			 */
			new_plane_state =
				FUNC1(state, master);

			FUNC5(plane, new_crtc_state, new_plane_state);
		} else {
			FUNC3(plane, new_crtc_state);
		}
	}
}