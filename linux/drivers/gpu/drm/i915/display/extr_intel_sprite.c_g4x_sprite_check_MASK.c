#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  visible; int /*<<< orphan*/  fb; int /*<<< orphan*/  plane; } ;
struct intel_plane_state {int /*<<< orphan*/  ctl; TYPE_2__ base; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct intel_plane {TYPE_1__ base; } ;
struct intel_crtc_state {int /*<<< orphan*/  base; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int DRM_PLANE_HELPER_NO_SCALING ; 
 int FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int,int,int,int) ; 
 int FUNC3 (struct intel_crtc_state*,struct intel_plane_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_crtc_state*,struct intel_plane_state*) ; 
 int FUNC5 (struct intel_plane_state*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct intel_plane_state*) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_crtc_state*,struct intel_plane_state*) ; 
 struct drm_i915_private* FUNC9 (int /*<<< orphan*/ ) ; 
 struct intel_plane* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(struct intel_crtc_state *crtc_state,
		 struct intel_plane_state *plane_state)
{
	struct intel_plane *plane = FUNC10(plane_state->base.plane);
	struct drm_i915_private *dev_priv = FUNC9(plane->base.dev);
	int min_scale = DRM_PLANE_HELPER_NO_SCALING;
	int max_scale = DRM_PLANE_HELPER_NO_SCALING;
	int ret;

	if (FUNC6(plane_state->base.fb)) {
		if (FUNC0(dev_priv) < 7) {
			min_scale = 1;
			max_scale = 16 << 16;
		} else if (FUNC1(dev_priv)) {
			min_scale = 1;
			max_scale = 2 << 16;
		}
	}

	ret = FUNC2(&plane_state->base,
						  &crtc_state->base,
						  min_scale, max_scale,
						  true, true);
	if (ret)
		return ret;

	ret = FUNC5(plane_state);
	if (ret)
		return ret;

	if (!plane_state->base.visible)
		return 0;

	ret = FUNC7(plane_state);
	if (ret)
		return ret;

	ret = FUNC3(crtc_state, plane_state);
	if (ret)
		return ret;

	if (FUNC0(dev_priv) >= 7)
		plane_state->ctl = FUNC8(crtc_state, plane_state);
	else
		plane_state->ctl = FUNC4(crtc_state, plane_state);

	return 0;
}