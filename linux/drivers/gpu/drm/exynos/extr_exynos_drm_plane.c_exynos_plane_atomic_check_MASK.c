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
struct exynos_drm_plane_state {int dummy; } ;
struct exynos_drm_plane {int /*<<< orphan*/  config; } ;
struct drm_plane_state {int /*<<< orphan*/  fb; int /*<<< orphan*/  crtc; } ;
struct drm_plane {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct exynos_drm_plane_state*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct exynos_drm_plane_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct exynos_drm_plane_state*) ; 
 struct exynos_drm_plane* FUNC3 (struct drm_plane*) ; 
 struct exynos_drm_plane_state* FUNC4 (struct drm_plane_state*) ; 

__attribute__((used)) static int FUNC5(struct drm_plane *plane,
				     struct drm_plane_state *state)
{
	struct exynos_drm_plane *exynos_plane = FUNC3(plane);
	struct exynos_drm_plane_state *exynos_state =
						FUNC4(state);
	int ret = 0;

	if (!state->crtc || !state->fb)
		return 0;

	/* translate state into exynos_state */
	FUNC2(exynos_state);

	ret = FUNC0(exynos_plane->config, exynos_state);
	if (ret)
		return ret;

	ret = FUNC1(exynos_plane->config, exynos_state);
	return ret;
}