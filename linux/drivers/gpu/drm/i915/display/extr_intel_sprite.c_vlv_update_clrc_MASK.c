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
struct TYPE_6__ {scalar_t__ color_range; struct drm_framebuffer* fb; int /*<<< orphan*/  plane; } ;
struct intel_plane_state {TYPE_3__ base; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct intel_plane {int pipe; int id; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_framebuffer {TYPE_2__* format; } ;
typedef  enum plane_id { ____Placeholder_plane_id } plane_id ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;
struct TYPE_5__ {scalar_t__ is_yuv; } ;

/* Variables and functions */
 int COS_0 ; 
 int FUNC0 (int,int) ; 
 scalar_t__ DRM_COLOR_YCBCR_LIMITED_RANGE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int SIN_0 ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 struct drm_i915_private* FUNC8 (int /*<<< orphan*/ ) ; 
 struct intel_plane* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(const struct intel_plane_state *plane_state)
{
	struct intel_plane *plane = FUNC9(plane_state->base.plane);
	struct drm_i915_private *dev_priv = FUNC8(plane->base.dev);
	const struct drm_framebuffer *fb = plane_state->base.fb;
	enum pipe pipe = plane->pipe;
	enum plane_id plane_id = plane->id;
	int contrast, brightness, sh_scale, sh_sin, sh_cos;

	if (fb->format->is_yuv &&
	    plane_state->base.color_range == DRM_COLOR_YCBCR_LIMITED_RANGE) {
		/*
		 * Expand limited range to full range:
		 * Contrast is applied first and is used to expand Y range.
		 * Brightness is applied second and is used to remove the
		 * offset from Y. Saturation/hue is used to expand CbCr range.
		 */
		contrast = FUNC0(255 << 6, 235 - 16);
		brightness = -FUNC0(16 * 255, 235 - 16);
		sh_scale = FUNC0(128 << 7, 240 - 128);
		sh_sin = SIN_0 * sh_scale;
		sh_cos = COS_0 * sh_scale;
	} else {
		/* Pass-through everything. */
		contrast = 1 << 6;
		brightness = 0;
		sh_scale = 1 << 7;
		sh_sin = SIN_0 * sh_scale;
		sh_cos = COS_0 * sh_scale;
	}

	/* FIXME these register are single buffered :( */
	FUNC1(FUNC2(pipe, plane_id),
		      FUNC5(contrast) | FUNC4(brightness));
	FUNC1(FUNC3(pipe, plane_id),
		      FUNC7(sh_sin) | FUNC6(sh_cos));
}