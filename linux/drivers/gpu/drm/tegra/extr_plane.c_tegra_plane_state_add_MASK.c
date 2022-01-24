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
struct tegra_plane {int index; } ;
struct tegra_dc_state {int planes; } ;
struct drm_plane_state {int /*<<< orphan*/  crtc; int /*<<< orphan*/  state; } ;
struct drm_crtc_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  INT_MAX ; 
 scalar_t__ FUNC0 (struct drm_crtc_state*) ; 
 int FUNC1 (struct drm_crtc_state*) ; 
 int WIN_A_ACT_REQ ; 
 struct drm_crtc_state* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct drm_plane_state*,struct drm_crtc_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct tegra_dc_state* FUNC4 (struct drm_crtc_state*) ; 

int FUNC5(struct tegra_plane *plane,
			  struct drm_plane_state *state)
{
	struct drm_crtc_state *crtc_state;
	struct tegra_dc_state *tegra;
	int err;

	/* Propagate errors from allocation or locking failures. */
	crtc_state = FUNC2(state->state, state->crtc);
	if (FUNC0(crtc_state))
		return FUNC1(crtc_state);

	/* Check plane state for visibility and calculate clipping bounds */
	err = FUNC3(state, crtc_state,
						  0, INT_MAX, true, true);
	if (err < 0)
		return err;

	tegra = FUNC4(crtc_state);

	tegra->planes |= WIN_A_ACT_REQ << plane->index;

	return 0;
}