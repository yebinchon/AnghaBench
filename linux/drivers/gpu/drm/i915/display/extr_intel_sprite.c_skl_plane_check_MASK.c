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
struct TYPE_8__ {int visible; int alpha; struct drm_framebuffer* fb; int /*<<< orphan*/  plane; } ;
struct TYPE_6__ {int /*<<< orphan*/  flags; } ;
struct intel_plane_state {int /*<<< orphan*/  color_ctl; int /*<<< orphan*/  ctl; TYPE_4__ base; TYPE_2__ ckey; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct intel_plane {TYPE_1__ base; } ;
struct intel_crtc_state {int /*<<< orphan*/  base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_framebuffer {TYPE_3__* format; } ;
struct TYPE_7__ {int /*<<< orphan*/  format; } ;

/* Variables and functions */
 int DRM_PLANE_HELPER_NO_SCALING ; 
 int FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 int FUNC2 (TYPE_4__*,int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_crtc_state*,struct intel_plane_state*) ; 
 scalar_t__ FUNC4 (struct drm_framebuffer const*) ; 
 int FUNC5 (struct intel_plane_state*) ; 
 int FUNC6 (struct intel_plane_state*) ; 
 int FUNC7 (struct intel_crtc_state*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct intel_crtc_state*,struct intel_plane_state*) ; 
 int FUNC9 (struct intel_crtc_state*,struct intel_plane_state*) ; 
 int FUNC10 (struct intel_plane_state*) ; 
 int /*<<< orphan*/  FUNC11 (struct intel_crtc_state*,struct intel_plane_state*) ; 
 struct drm_i915_private* FUNC12 (int /*<<< orphan*/ ) ; 
 struct intel_plane* FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct intel_crtc_state *crtc_state,
			   struct intel_plane_state *plane_state)
{
	struct intel_plane *plane = FUNC13(plane_state->base.plane);
	struct drm_i915_private *dev_priv = FUNC12(plane->base.dev);
	const struct drm_framebuffer *fb = plane_state->base.fb;
	int min_scale = DRM_PLANE_HELPER_NO_SCALING;
	int max_scale = DRM_PLANE_HELPER_NO_SCALING;
	int ret;

	ret = FUNC9(crtc_state, plane_state);
	if (ret)
		return ret;

	/* use scaler when colorkey is not required */
	if (!plane_state->ckey.flags && FUNC4(fb)) {
		min_scale = 1;
		max_scale = FUNC7(crtc_state, fb->format->format);
	}

	ret = FUNC2(&plane_state->base,
						  &crtc_state->base,
						  min_scale, max_scale,
						  true, true);
	if (ret)
		return ret;

	ret = FUNC6(plane_state);
	if (ret)
		return ret;

	if (!plane_state->base.visible)
		return 0;

	ret = FUNC8(crtc_state, plane_state);
	if (ret)
		return ret;

	ret = FUNC5(plane_state);
	if (ret)
		return ret;

	ret = FUNC10(plane_state);
	if (ret)
		return ret;

	/* HW only has 8 bits pixel precision, disable plane if invisible */
	if (!(plane_state->base.alpha >> 8))
		plane_state->base.visible = false;

	plane_state->ctl = FUNC11(crtc_state, plane_state);

	if (FUNC0(dev_priv) >= 10 || FUNC1(dev_priv))
		plane_state->color_ctl = FUNC3(crtc_state,
							     plane_state);

	return 0;
}