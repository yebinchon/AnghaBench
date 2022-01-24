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
struct TYPE_5__ {size_t color_encoding; struct drm_framebuffer* fb; int /*<<< orphan*/  plane; } ;
struct intel_plane_state {TYPE_2__ base; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct intel_plane {int id; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_framebuffer {TYPE_3__* format; } ;
typedef  int /*<<< orphan*/  s16 ;
typedef  enum plane_id { ____Placeholder_plane_id } plane_id ;
struct TYPE_6__ {int /*<<< orphan*/  is_yuv; } ;

/* Variables and functions */
#define  DRM_COLOR_YCBCR_BT601 129 
#define  DRM_COLOR_YCBCR_BT709 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int FUNC15 (int /*<<< orphan*/  const) ; 
 int FUNC16 (int /*<<< orphan*/  const) ; 
 int FUNC17 (int) ; 
 int FUNC18 (int) ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 
 int FUNC20 (int) ; 
 int FUNC21 (int /*<<< orphan*/ ) ; 
 int FUNC22 (int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC23 (int /*<<< orphan*/ ) ; 
 struct intel_plane* FUNC24 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC25(const struct intel_plane_state *plane_state)
{
	struct intel_plane *plane = FUNC24(plane_state->base.plane);
	struct drm_i915_private *dev_priv = FUNC23(plane->base.dev);
	const struct drm_framebuffer *fb = plane_state->base.fb;
	enum plane_id plane_id = plane->id;
	/*
	 * |r|   | c0 c1 c2 |   |cr|
	 * |g| = | c3 c4 c5 | x |y |
	 * |b|   | c6 c7 c8 |   |cb|
	 *
	 * Coefficients are s3.12.
	 *
	 * Cb and Cr apparently come in as signed already, and
	 * we always get full range data in on account of CLRC0/1.
	 */
	static const s16 csc_matrix[][9] = {
		/* BT.601 full range YCbCr -> full range RGB */
		[DRM_COLOR_YCBCR_BT601] = {
			 5743, 4096,     0,
			-2925, 4096, -1410,
			    0, 4096,  7258,
		},
		/* BT.709 full range YCbCr -> full range RGB */
		[DRM_COLOR_YCBCR_BT709] = {
			 6450, 4096,     0,
			-1917, 4096,  -767,
			    0, 4096,  7601,
		},
	};
	const s16 *csc = csc_matrix[plane_state->base.color_encoding];

	/* Seems RGB data bypasses the CSC always */
	if (!fb->format->is_yuv)
		return;

	FUNC0(FUNC14(plane_id), FUNC22(0) | FUNC19(0));
	FUNC0(FUNC8(plane_id), FUNC22(0) | FUNC19(0));
	FUNC0(FUNC11(plane_id), FUNC22(0) | FUNC19(0));

	FUNC0(FUNC1(plane_id), FUNC16(csc[1]) | FUNC15(csc[0]));
	FUNC0(FUNC2(plane_id), FUNC16(csc[3]) | FUNC15(csc[2]));
	FUNC0(FUNC3(plane_id), FUNC16(csc[5]) | FUNC15(csc[4]));
	FUNC0(FUNC4(plane_id), FUNC16(csc[7]) | FUNC15(csc[6]));
	FUNC0(FUNC5(plane_id), FUNC15(csc[8]));

	FUNC0(FUNC12(plane_id), FUNC17(1023) | FUNC18(0));
	FUNC0(FUNC6(plane_id), FUNC17(512) | FUNC18(-512));
	FUNC0(FUNC9(plane_id), FUNC17(512) | FUNC18(-512));

	FUNC0(FUNC13(plane_id), FUNC20(1023) | FUNC21(0));
	FUNC0(FUNC7(plane_id), FUNC20(1023) | FUNC21(0));
	FUNC0(FUNC10(plane_id), FUNC20(1023) | FUNC21(0));
}