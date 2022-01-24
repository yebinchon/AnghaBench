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
typedef  int /*<<< orphan*/  uint_fixed_16_16_t ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct TYPE_3__ {int /*<<< orphan*/  src; struct drm_framebuffer* fb; int /*<<< orphan*/  visible; int /*<<< orphan*/  plane; } ;
struct intel_plane_state {TYPE_1__ base; } ;
struct intel_plane {scalar_t__ id; } ;
struct intel_crtc_state {int dummy; } ;
struct drm_framebuffer {TYPE_2__* format; } ;
struct TYPE_4__ {int format; int /*<<< orphan*/ * cpp; } ;

/* Variables and functions */
 scalar_t__ PLANE_CURSOR ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_crtc_state const*,struct intel_plane_state const*) ; 
 struct intel_plane* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u64
FUNC6(const struct intel_crtc_state *crtc_state,
			     const struct intel_plane_state *plane_state,
			     const int plane)
{
	struct intel_plane *intel_plane = FUNC5(plane_state->base.plane);
	u32 data_rate;
	u32 width = 0, height = 0;
	struct drm_framebuffer *fb;
	u32 format;
	uint_fixed_16_16_t down_scale_amount;
	u64 rate;

	if (!plane_state->base.visible)
		return 0;

	fb = plane_state->base.fb;
	format = fb->format->format;

	if (intel_plane->id == PLANE_CURSOR)
		return 0;
	if (plane == 1 && !FUNC2(format))
		return 0;

	/*
	 * Src coordinates are already rotated by 270 degrees for
	 * the 90/270 degree plane rotation cases (to match the
	 * GTT mapping), hence no need to account for rotation here.
	 */
	width = FUNC1(&plane_state->base.src) >> 16;
	height = FUNC0(&plane_state->base.src) >> 16;

	/* UV plane does 1/2 pixel sub-sampling */
	if (plane == 1 && FUNC2(format)) {
		width /= 2;
		height /= 2;
	}

	data_rate = width * height;

	down_scale_amount = FUNC4(crtc_state, plane_state);

	rate = FUNC3(data_rate, down_scale_amount);

	rate *= fb->format->cpp[plane];
	return rate;
}