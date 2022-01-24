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
struct mtk_drm_private {struct drm_device* drm; } ;
struct drm_device {int dummy; } ;
struct drm_atomic_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_PLANE_COMMIT_ACTIVE_ONLY ; 
 int /*<<< orphan*/  FUNC0 (struct drm_device*,struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,struct drm_atomic_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,struct drm_atomic_state*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*,struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_atomic_state*) ; 

__attribute__((used)) static void FUNC7(struct mtk_drm_private *private,
				struct drm_atomic_state *state)
{
	struct drm_device *drm = private->drm;

	FUNC4(drm, state, false);

	/*
	 * Mediatek drm supports runtime PM, so plane registers cannot be
	 * written when their crtc is disabled.
	 *
	 * The comment for drm_atomic_helper_commit states:
	 *     For drivers supporting runtime PM the recommended sequence is
	 *
	 *     drm_atomic_helper_commit_modeset_disables(dev, state);
	 *     drm_atomic_helper_commit_modeset_enables(dev, state);
	 *     drm_atomic_helper_commit_planes(dev, state,
	 *                                     DRM_PLANE_COMMIT_ACTIVE_ONLY);
	 *
	 * See the kerneldoc entries for these three functions for more details.
	 */
	FUNC1(drm, state);
	FUNC2(drm, state);
	FUNC3(drm, state,
					DRM_PLANE_COMMIT_ACTIVE_ONLY);

	FUNC5(drm, state);

	FUNC0(drm, state);
	FUNC6(state);
}