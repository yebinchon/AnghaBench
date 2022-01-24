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
struct TYPE_2__ {int visible; } ;
struct intel_plane_state {TYPE_1__ base; } ;
struct intel_plane {int dummy; } ;
struct intel_crtc_state {int dummy; } ;
struct intel_crtc {int dummy; } ;
struct intel_atomic_state {int dummy; } ;
struct drm_plane_state {int /*<<< orphan*/  state; } ;
struct drm_plane {int dummy; } ;

/* Variables and functions */
 struct intel_crtc* FUNC0 (struct intel_plane_state const*,struct intel_plane_state*) ; 
 struct intel_crtc_state* FUNC1 (struct intel_atomic_state*,struct intel_crtc*) ; 
 struct intel_crtc_state* FUNC2 (struct intel_atomic_state*,struct intel_crtc*) ; 
 struct intel_plane_state* FUNC3 (struct intel_atomic_state*,struct intel_plane*) ; 
 int FUNC4 (struct intel_crtc_state const*,struct intel_crtc_state*,struct intel_plane_state const*,struct intel_plane_state*) ; 
 struct intel_atomic_state* FUNC5 (int /*<<< orphan*/ ) ; 
 struct intel_plane* FUNC6 (struct drm_plane*) ; 
 struct intel_plane_state* FUNC7 (struct drm_plane_state*) ; 

__attribute__((used)) static int FUNC8(struct drm_plane *_plane,
				    struct drm_plane_state *_new_plane_state)
{
	struct intel_plane *plane = FUNC6(_plane);
	struct intel_atomic_state *state =
		FUNC5(_new_plane_state->state);
	struct intel_plane_state *new_plane_state =
		FUNC7(_new_plane_state);
	const struct intel_plane_state *old_plane_state =
		FUNC3(state, plane);
	struct intel_crtc *crtc =
		FUNC0(old_plane_state, new_plane_state);
	const struct intel_crtc_state *old_crtc_state;
	struct intel_crtc_state *new_crtc_state;

	new_plane_state->base.visible = false;
	if (!crtc)
		return 0;

	old_crtc_state = FUNC2(state, crtc);
	new_crtc_state = FUNC1(state, crtc);

	return FUNC4(old_crtc_state,
						   new_crtc_state,
						   old_plane_state,
						   new_plane_state);
}