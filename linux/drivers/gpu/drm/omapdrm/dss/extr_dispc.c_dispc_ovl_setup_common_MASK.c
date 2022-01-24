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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
typedef  int u16 ;
struct videomode {int flags; unsigned long pixelclock; } ;
struct drm_format_info {scalar_t__ is_yuv; } ;
struct dispc_device {TYPE_1__* feat; } ;
typedef  int s32 ;
typedef  enum omap_plane_id { ____Placeholder_omap_plane_id } omap_plane_id ;
typedef  enum omap_overlay_caps { ____Placeholder_omap_overlay_caps } omap_overlay_caps ;
typedef  enum omap_dss_rotation_type { ____Placeholder_omap_dss_rotation_type } omap_dss_rotation_type ;
struct TYPE_2__ {scalar_t__ last_pixel_inc_missing; scalar_t__ reverse_ilace_field_order; } ;

/* Variables and functions */
 int DISPLAY_FLAGS_INTERLACED ; 
 scalar_t__ DRM_FORMAT_NV12 ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int EINVAL ; 
 int OMAP_DSS_OVL_CAP_SCALE ; 
 int OMAP_DSS_ROT_TILER ; 
 int OMAP_DSS_WB ; 
 int /*<<< orphan*/  FUNC2 (int,int,scalar_t__,int,unsigned int,unsigned int*,unsigned int*,int*,int*,int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct dispc_device*,int,unsigned long,unsigned long,int,struct videomode const*,int,int,int,int,scalar_t__,int*,int*,int*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dispc_device*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct dispc_device*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct dispc_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct dispc_device*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct dispc_device*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct dispc_device*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct dispc_device*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct dispc_device*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct dispc_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct dispc_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct dispc_device*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (struct dispc_device*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC16 (struct dispc_device*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct dispc_device*,int,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (struct dispc_device*,int,int) ; 
 int /*<<< orphan*/  FUNC19 (struct dispc_device*,int,int,int,int,int,int,int,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct dispc_device*,int,int) ; 
 int /*<<< orphan*/  FUNC21 (struct dispc_device*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct dispc_device*,int,int,int /*<<< orphan*/ ) ; 
 unsigned long FUNC23 (struct dispc_device*,int) ; 
 unsigned long FUNC24 (struct dispc_device*,int) ; 
 struct drm_format_info* FUNC25 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC26 (unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC27(struct dispc_device *dispc,
				  enum omap_plane_id plane,
				  enum omap_overlay_caps caps,
				  u32 paddr, u32 p_uv_addr,
				  u16 screen_width, int pos_x, int pos_y,
				  u16 width, u16 height,
				  u16 out_width, u16 out_height,
				  u32 fourcc, u8 rotation, u8 zorder,
				  u8 pre_mult_alpha, u8 global_alpha,
				  enum omap_dss_rotation_type rotation_type,
				  bool replication, const struct videomode *vm,
				  bool mem_to_mem)
{
	bool five_taps = true;
	bool fieldmode = false;
	int r, cconv = 0;
	unsigned int offset0, offset1;
	s32 row_inc;
	s32 pix_inc;
	u16 frame_width;
	unsigned int field_offset = 0;
	u16 in_height = height;
	u16 in_width = width;
	int x_predecim = 1, y_predecim = 1;
	bool ilace = !!(vm->flags & DISPLAY_FLAGS_INTERLACED);
	unsigned long pclk = FUNC24(dispc, plane);
	unsigned long lclk = FUNC23(dispc, plane);
	const struct drm_format_info *info;

	info = FUNC25(fourcc);

	/* when setting up WB, dispc_plane_pclk_rate() returns 0 */
	if (plane == OMAP_DSS_WB)
		pclk = vm->pixelclock;

	if (paddr == 0 && rotation_type != OMAP_DSS_ROT_TILER)
		return -EINVAL;

	if (info->is_yuv && (in_width & 1)) {
		FUNC1("input width %d is not even for YUV format\n", in_width);
		return -EINVAL;
	}

	out_width = out_width == 0 ? width : out_width;
	out_height = out_height == 0 ? height : out_height;

	if (plane != OMAP_DSS_WB) {
		if (ilace && height == out_height)
			fieldmode = true;

		if (ilace) {
			if (fieldmode)
				in_height /= 2;
			pos_y /= 2;
			out_height /= 2;

			FUNC0("adjusting for ilace: height %d, pos_y %d, out_height %d\n",
				in_height, pos_y, out_height);
		}
	}

	if (!FUNC4(dispc, plane, fourcc))
		return -EINVAL;

	r = FUNC3(dispc, plane, pclk, lclk, caps, vm, in_width,
				   in_height, out_width, out_height, fourcc,
				   &five_taps, &x_predecim, &y_predecim, pos_x,
				   rotation_type, mem_to_mem);
	if (r)
		return r;

	in_width = in_width / x_predecim;
	in_height = in_height / y_predecim;

	if (x_predecim > 1 || y_predecim > 1)
		FUNC0("predecimation %d x %x, new input size %d x %d\n",
			x_predecim, y_predecim, in_width, in_height);

	if (info->is_yuv && (in_width & 1)) {
		FUNC0("predecimated input width is not even for YUV format\n");
		FUNC0("adjusting input width %d -> %d\n",
			in_width, in_width & ~1);

		in_width &= ~1;
	}

	if (info->is_yuv)
		cconv = 1;

	if (ilace && !fieldmode) {
		/*
		 * when downscaling the bottom field may have to start several
		 * source lines below the top field. Unfortunately ACCUI
		 * registers will only hold the fractional part of the offset
		 * so the integer part must be added to the base address of the
		 * bottom field.
		 */
		if (!in_height || in_height == out_height)
			field_offset = 0;
		else
			field_offset = in_height / out_height / 2;
	}

	/* Fields are independent but interleaved in memory. */
	if (fieldmode)
		field_offset = 1;

	offset0 = 0;
	offset1 = 0;
	row_inc = 0;
	pix_inc = 0;

	if (plane == OMAP_DSS_WB)
		frame_width = out_width;
	else
		frame_width = in_width;

	FUNC2(screen_width, frame_width,
			fourcc, fieldmode, field_offset,
			&offset0, &offset1, &row_inc, &pix_inc,
			x_predecim, y_predecim,
			rotation_type, rotation);

	FUNC0("offset0 %u, offset1 %u, row_inc %d, pix_inc %d\n",
			offset0, offset1, row_inc, pix_inc);

	FUNC11(dispc, plane, fourcc);

	FUNC5(dispc, plane, rotation_type);

	if (dispc->feat->reverse_ilace_field_order)
		FUNC26(offset0, offset1);

	FUNC7(dispc, plane, paddr + offset0);
	FUNC9(dispc, plane, paddr + offset1);

	if (fourcc == DRM_FORMAT_NV12) {
		FUNC8(dispc, plane, p_uv_addr + offset0);
		FUNC10(dispc, plane, p_uv_addr + offset1);
	}

	if (dispc->feat->last_pixel_inc_missing)
		row_inc += pix_inc - 1;

	FUNC18(dispc, plane, row_inc);
	FUNC14(dispc, plane, pix_inc);

	FUNC0("%d,%d %dx%d -> %dx%d\n", pos_x, pos_y, in_width,
			in_height, out_width, out_height);

	FUNC15(dispc, plane, caps, pos_x, pos_y);

	FUNC12(dispc, plane, in_width, in_height);

	if (caps & OMAP_DSS_OVL_CAP_SCALE) {
		FUNC19(dispc, plane, in_width, in_height,
				      out_width, out_height, ilace, five_taps,
				      fieldmode, fourcc, rotation);
		FUNC13(dispc, plane, out_width, out_height);
		FUNC20(dispc, plane, cconv);
	}

	FUNC17(dispc, plane, rotation, rotation_type,
				     fourcc);

	FUNC21(dispc, plane, caps, zorder);
	FUNC16(dispc, plane, caps, pre_mult_alpha);
	FUNC22(dispc, plane, caps, global_alpha);

	FUNC6(dispc, plane, caps, replication);

	return 0;
}