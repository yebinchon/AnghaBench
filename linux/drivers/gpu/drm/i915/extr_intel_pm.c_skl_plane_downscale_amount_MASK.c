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
typedef  int /*<<< orphan*/  uint_fixed_16_16_t ;
typedef  int u32 ;
struct TYPE_2__ {int src_w; int src_h; int crtc_w; int crtc_h; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; int /*<<< orphan*/  plane; } ;
struct intel_plane_state {TYPE_1__ base; } ;
struct intel_plane {scalar_t__ id; } ;
struct intel_crtc_state {int dummy; } ;

/* Variables and functions */
 scalar_t__ PLANE_CURSOR ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_crtc_state const*,struct intel_plane_state const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct intel_plane* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static uint_fixed_16_16_t
FUNC9(const struct intel_crtc_state *crtc_state,
			   const struct intel_plane_state *plane_state)
{
	struct intel_plane *plane = FUNC7(plane_state->base.plane);
	u32 src_w, src_h, dst_w, dst_h;
	uint_fixed_16_16_t fp_w_ratio, fp_h_ratio;
	uint_fixed_16_16_t downscale_h, downscale_w;

	if (FUNC0(!FUNC4(crtc_state, plane_state)))
		return FUNC8(0);

	/* n.b., src is 16.16 fixed point, dst is whole integer */
	if (plane->id == PLANE_CURSOR) {
		/*
		 * Cursors only support 0/180 degree rotation,
		 * hence no need to account for rotation here.
		 */
		src_w = plane_state->base.src_w >> 16;
		src_h = plane_state->base.src_h >> 16;
		dst_w = plane_state->base.crtc_w;
		dst_h = plane_state->base.crtc_h;
	} else {
		/*
		 * Src coordinates are already rotated by 270 degrees for
		 * the 90/270 degree plane rotation cases (to match the
		 * GTT mapping), hence no need to account for rotation here.
		 */
		src_w = FUNC3(&plane_state->base.src) >> 16;
		src_h = FUNC2(&plane_state->base.src) >> 16;
		dst_w = FUNC3(&plane_state->base.dst);
		dst_h = FUNC2(&plane_state->base.dst);
	}

	fp_w_ratio = FUNC1(src_w, dst_w);
	fp_h_ratio = FUNC1(src_h, dst_h);
	downscale_w = FUNC5(fp_w_ratio, FUNC8(1));
	downscale_h = FUNC5(fp_h_ratio, FUNC8(1));

	return FUNC6(downscale_w, downscale_h);
}