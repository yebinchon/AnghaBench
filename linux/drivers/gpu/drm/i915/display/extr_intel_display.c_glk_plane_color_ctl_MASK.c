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
struct TYPE_4__ {scalar_t__ color_encoding; scalar_t__ color_range; TYPE_3__* plane; struct drm_framebuffer* fb; } ;
struct intel_plane_state {TYPE_1__ base; } ;
struct intel_plane {int /*<<< orphan*/  id; } ;
struct intel_crtc_state {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct drm_framebuffer {TYPE_2__* format; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {scalar_t__ is_yuv; } ;

/* Variables and functions */
 scalar_t__ DRM_COLOR_YCBCR_BT709 ; 
 scalar_t__ DRM_COLOR_YCBCR_FULL_RANGE ; 
 int /*<<< orphan*/  PLANE_COLOR_CSC_MODE_YUV601_TO_RGB709 ; 
 int /*<<< orphan*/  PLANE_COLOR_CSC_MODE_YUV709_TO_RGB709 ; 
 int /*<<< orphan*/  PLANE_COLOR_INPUT_CSC_ENABLE ; 
 int /*<<< orphan*/  PLANE_COLOR_PLANE_GAMMA_DISABLE ; 
 int /*<<< orphan*/  PLANE_COLOR_YUV_RANGE_CORRECTION_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (struct intel_plane_state const*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC2 (int /*<<< orphan*/ ) ; 
 struct intel_plane* FUNC3 (TYPE_3__*) ; 

u32 FUNC4(const struct intel_crtc_state *crtc_state,
			const struct intel_plane_state *plane_state)
{
	struct drm_i915_private *dev_priv =
		FUNC2(plane_state->base.plane->dev);
	const struct drm_framebuffer *fb = plane_state->base.fb;
	struct intel_plane *plane = FUNC3(plane_state->base.plane);
	u32 plane_color_ctl = 0;

	plane_color_ctl |= PLANE_COLOR_PLANE_GAMMA_DISABLE;
	plane_color_ctl |= FUNC0(plane_state);

	if (fb->format->is_yuv && !FUNC1(dev_priv, plane->id)) {
		if (plane_state->base.color_encoding == DRM_COLOR_YCBCR_BT709)
			plane_color_ctl |= PLANE_COLOR_CSC_MODE_YUV709_TO_RGB709;
		else
			plane_color_ctl |= PLANE_COLOR_CSC_MODE_YUV601_TO_RGB709;

		if (plane_state->base.color_range == DRM_COLOR_YCBCR_FULL_RANGE)
			plane_color_ctl |= PLANE_COLOR_YUV_RANGE_CORRECTION_DISABLE;
	} else if (fb->format->is_yuv) {
		plane_color_ctl |= PLANE_COLOR_INPUT_CSC_ENABLE;
	}

	return plane_color_ctl;
}