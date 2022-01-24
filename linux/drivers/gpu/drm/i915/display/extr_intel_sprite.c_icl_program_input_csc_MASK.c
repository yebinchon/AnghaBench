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
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_4__ {scalar_t__ color_range; size_t color_encoding; } ;
struct intel_plane_state {TYPE_2__ base; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct intel_plane {int pipe; int id; TYPE_1__ base; } ;
struct intel_crtc_state {int dummy; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum plane_id { ____Placeholder_plane_id } plane_id ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const) ; 
#define  DRM_COLOR_YCBCR_BT2020 130 
#define  DRM_COLOR_YCBCR_BT601 129 
#define  DRM_COLOR_YCBCR_BT709 128 
 scalar_t__ DRM_COLOR_YCBCR_FULL_RANGE ; 
 int FUNC1 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int) ; 
 int PREOFF_YUV_TO_RGB_HI ; 
 int PREOFF_YUV_TO_RGB_LO ; 
 int PREOFF_YUV_TO_RGB_ME ; 
 int FUNC6 (int /*<<< orphan*/  const) ; 
 struct drm_i915_private* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct intel_plane *plane,
		      const struct intel_crtc_state *crtc_state,
		      const struct intel_plane_state *plane_state)
{
	struct drm_i915_private *dev_priv = FUNC7(plane->base.dev);
	enum pipe pipe = plane->pipe;
	enum plane_id plane_id = plane->id;

	static const u16 input_csc_matrix[][9] = {
		/*
		 * BT.601 full range YCbCr -> full range RGB
		 * The matrix required is :
		 * [1.000, 0.000, 1.371,
		 *  1.000, -0.336, -0.698,
		 *  1.000, 1.732, 0.0000]
		 */
		[DRM_COLOR_YCBCR_BT601] = {
			0x7AF8, 0x7800, 0x0,
			0x8B28, 0x7800, 0x9AC0,
			0x0, 0x7800, 0x7DD8,
		},
		/*
		 * BT.709 full range YCbCr -> full range RGB
		 * The matrix required is :
		 * [1.000, 0.000, 1.574,
		 *  1.000, -0.187, -0.468,
		 *  1.000, 1.855, 0.0000]
		 */
		[DRM_COLOR_YCBCR_BT709] = {
			0x7C98, 0x7800, 0x0,
			0x9EF8, 0x7800, 0xAC00,
			0x0, 0x7800,  0x7ED8,
		},
		/*
		 * BT.2020 full range YCbCr -> full range RGB
		 * The matrix required is :
		 * [1.000, 0.000, 1.474,
		 *  1.000, -0.1645, -0.5713,
		 *  1.000, 1.8814, 0.0000]
		 */
		[DRM_COLOR_YCBCR_BT2020] = {
			0x7BC8, 0x7800, 0x0,
			0x8928, 0x7800, 0xAA88,
			0x0, 0x7800, 0x7F10,
		},
	};

	/* Matrix for Limited Range to Full Range Conversion */
	static const u16 input_csc_matrix_lr[][9] = {
		/*
		 * BT.601 Limted range YCbCr -> full range RGB
		 * The matrix required is :
		 * [1.164384, 0.000, 1.596027,
		 *  1.164384, -0.39175, -0.812813,
		 *  1.164384, 2.017232, 0.0000]
		 */
		[DRM_COLOR_YCBCR_BT601] = {
			0x7CC8, 0x7950, 0x0,
			0x8D00, 0x7950, 0x9C88,
			0x0, 0x7950, 0x6810,
		},
		/*
		 * BT.709 Limited range YCbCr -> full range RGB
		 * The matrix required is :
		 * [1.164384, 0.000, 1.792741,
		 *  1.164384, -0.213249, -0.532909,
		 *  1.164384, 2.112402, 0.0000]
		 */
		[DRM_COLOR_YCBCR_BT709] = {
			0x7E58, 0x7950, 0x0,
			0x8888, 0x7950, 0xADA8,
			0x0, 0x7950,  0x6870,
		},
		/*
		 * BT.2020 Limited range YCbCr -> full range RGB
		 * The matrix required is :
		 * [1.164, 0.000, 1.678,
		 *  1.164, -0.1873, -0.6504,
		 *  1.164, 2.1417, 0.0000]
		 */
		[DRM_COLOR_YCBCR_BT2020] = {
			0x7D70, 0x7950, 0x0,
			0x8A68, 0x7950, 0xAC00,
			0x0, 0x7950, 0x6890,
		},
	};
	const u16 *csc;

	if (plane_state->base.color_range == DRM_COLOR_YCBCR_FULL_RANGE)
		csc = input_csc_matrix[plane_state->base.color_encoding];
	else
		csc = input_csc_matrix_lr[plane_state->base.color_encoding];

	FUNC2(FUNC3(pipe, plane_id, 0), FUNC6(csc[0]) |
		      FUNC1(csc[1]));
	FUNC2(FUNC3(pipe, plane_id, 1), FUNC0(csc[2]));
	FUNC2(FUNC3(pipe, plane_id, 2), FUNC6(csc[3]) |
		      FUNC1(csc[4]));
	FUNC2(FUNC3(pipe, plane_id, 3), FUNC0(csc[5]));
	FUNC2(FUNC3(pipe, plane_id, 4), FUNC6(csc[6]) |
		      FUNC1(csc[7]));
	FUNC2(FUNC3(pipe, plane_id, 5), FUNC0(csc[8]));

	FUNC2(FUNC5(pipe, plane_id, 0),
		      PREOFF_YUV_TO_RGB_HI);
	if (plane_state->base.color_range == DRM_COLOR_YCBCR_FULL_RANGE)
		FUNC2(FUNC5(pipe, plane_id, 1), 0);
	else
		FUNC2(FUNC5(pipe, plane_id, 1),
			      PREOFF_YUV_TO_RGB_ME);
	FUNC2(FUNC5(pipe, plane_id, 2),
		      PREOFF_YUV_TO_RGB_LO);
	FUNC2(FUNC4(pipe, plane_id, 0), 0x0);
	FUNC2(FUNC4(pipe, plane_id, 1), 0x0);
	FUNC2(FUNC4(pipe, plane_id, 2), 0x0);
}