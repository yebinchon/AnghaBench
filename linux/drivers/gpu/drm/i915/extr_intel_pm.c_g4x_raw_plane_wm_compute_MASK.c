#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  plane; } ;
struct intel_plane_state {TYPE_1__ base; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; int /*<<< orphan*/  dev; } ;
struct intel_plane {int id; TYPE_2__ base; } ;
struct TYPE_7__ {struct g4x_pipe_wm* raw; } ;
struct TYPE_8__ {TYPE_3__ g4x; } ;
struct intel_crtc_state {TYPE_4__ wm; } ;
struct g4x_pipe_wm {int* plane; int fbc; } ;
typedef  enum plane_id { ____Placeholder_plane_id } plane_id ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,...) ; 
 size_t G4X_WM_LEVEL_HPLL ; 
 int G4X_WM_LEVEL_NORMAL ; 
 size_t G4X_WM_LEVEL_SR ; 
 int PLANE_PRIMARY ; 
 int USHRT_MAX ; 
 int FUNC1 (struct intel_crtc_state*,struct intel_plane_state const*,int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int,int) ; 
 int FUNC4 (struct intel_crtc_state*,int,int) ; 
 int FUNC5 (struct intel_crtc_state*,int,int,int) ; 
 int FUNC6 (struct intel_crtc_state*,struct intel_plane_state const*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_crtc_state*,struct intel_plane_state const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct intel_plane* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC11(struct intel_crtc_state *crtc_state,
				     const struct intel_plane_state *plane_state)
{
	struct intel_plane *plane = FUNC10(plane_state->base.plane);
	int num_levels = FUNC7(FUNC9(plane->base.dev));
	enum plane_id plane_id = plane->id;
	bool dirty = false;
	int level;

	if (!FUNC8(crtc_state, plane_state)) {
		dirty |= FUNC5(crtc_state, 0, plane_id, 0);
		if (plane_id == PLANE_PRIMARY)
			dirty |= FUNC4(crtc_state, 0, 0);
		goto out;
	}

	for (level = 0; level < num_levels; level++) {
		struct g4x_pipe_wm *raw = &crtc_state->wm.g4x.raw[level];
		int wm, max_wm;

		wm = FUNC1(crtc_state, plane_state, level);
		max_wm = FUNC3(plane_id, level);

		if (wm > max_wm)
			break;

		dirty |= raw->plane[plane_id] != wm;
		raw->plane[plane_id] = wm;

		if (plane_id != PLANE_PRIMARY ||
		    level == G4X_WM_LEVEL_NORMAL)
			continue;

		wm = FUNC6(crtc_state, plane_state,
					raw->plane[plane_id]);
		max_wm = FUNC2(level);

		/*
		 * FBC wm is not mandatory as we
		 * can always just disable its use.
		 */
		if (wm > max_wm)
			wm = USHRT_MAX;

		dirty |= raw->fbc != wm;
		raw->fbc = wm;
	}

	/* mark watermarks as invalid */
	dirty |= FUNC5(crtc_state, level, plane_id, USHRT_MAX);

	if (plane_id == PLANE_PRIMARY)
		dirty |= FUNC4(crtc_state, level, USHRT_MAX);

 out:
	if (dirty) {
		FUNC0("%s watermarks: normal=%d, SR=%d, HPLL=%d\n",
			      plane->base.name,
			      crtc_state->wm.g4x.raw[G4X_WM_LEVEL_NORMAL].plane[plane_id],
			      crtc_state->wm.g4x.raw[G4X_WM_LEVEL_SR].plane[plane_id],
			      crtc_state->wm.g4x.raw[G4X_WM_LEVEL_HPLL].plane[plane_id]);

		if (plane_id == PLANE_PRIMARY)
			FUNC0("FBC watermarks: SR=%d, HPLL=%d\n",
				      crtc_state->wm.g4x.raw[G4X_WM_LEVEL_SR].fbc,
				      crtc_state->wm.g4x.raw[G4X_WM_LEVEL_HPLL].fbc);
	}

	return dirty;
}