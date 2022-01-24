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
struct tegra_plane {int dummy; } ;
struct drm_plane_state {int src_w; int crtc_w; int src_h; int crtc_h; int /*<<< orphan*/  crtc; } ;
struct drm_plane {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct tegra_plane*,struct drm_plane_state*) ; 
 struct tegra_plane* FUNC1 (struct drm_plane*) ; 

__attribute__((used)) static int FUNC2(struct drm_plane *plane,
				     struct drm_plane_state *state)
{
	struct tegra_plane *tegra = FUNC1(plane);
	int err;

	/* no need for further checks if the plane is being disabled */
	if (!state->crtc)
		return 0;

	/* scaling not supported for cursor */
	if ((state->src_w >> 16 != state->crtc_w) ||
	    (state->src_h >> 16 != state->crtc_h))
		return -EINVAL;

	/* only square cursors supported */
	if (state->src_w != state->src_h)
		return -EINVAL;

	if (state->crtc_w != 32 && state->crtc_w != 64 &&
	    state->crtc_w != 128 && state->crtc_w != 256)
		return -EINVAL;

	err = FUNC0(tegra, state);
	if (err < 0)
		return err;

	return 0;
}