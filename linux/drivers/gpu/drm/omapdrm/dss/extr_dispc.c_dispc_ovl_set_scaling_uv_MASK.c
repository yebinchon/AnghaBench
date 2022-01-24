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
typedef  int u8 ;
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct drm_format_info {int /*<<< orphan*/  is_yuv; } ;
struct dispc_device {int dummy; } ;
typedef  enum omap_plane_id { ____Placeholder_omap_plane_id } omap_plane_id ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  DISPC_COLOR_COMPONENT_UV ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
#define  DRM_FORMAT_NV12 130 
#define  DRM_FORMAT_UYVY 129 
#define  DRM_FORMAT_YUYV 128 
 int DRM_MODE_ROTATE_0 ; 
 int DRM_MODE_ROTATE_MASK ; 
 int /*<<< orphan*/  FEAT_HANDLE_UV_SEPARATE ; 
 int OMAP_DSS_WB ; 
 int /*<<< orphan*/  FUNC3 (struct dispc_device*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dispc_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dispc_device*,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct dispc_device*,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,int,int /*<<< orphan*/ ) ; 
 struct drm_format_info* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct dispc_device *dispc,
				     enum omap_plane_id plane,
				     u16 orig_width, u16 orig_height,
				     u16 out_width, u16 out_height,
				     bool ilace, bool five_taps,
				     bool fieldmode, u32 fourcc,
				     u8 rotation)
{
	int scale_x = out_width != orig_width;
	int scale_y = out_height != orig_height;
	bool chroma_upscale = plane != OMAP_DSS_WB;
	const struct drm_format_info *info;

	info = FUNC7(fourcc);

	if (!FUNC4(dispc, FEAT_HANDLE_UV_SEPARATE))
		return;

	if (!info->is_yuv) {
		/* reset chroma resampling for RGB formats  */
		if (plane != OMAP_DSS_WB)
			FUNC3(dispc, FUNC2(plane),
				    0, 8, 8);
		return;
	}

	FUNC5(dispc, plane, orig_width, orig_height, out_width,
			      out_height, ilace, fourcc, rotation);

	switch (fourcc) {
	case DRM_FORMAT_NV12:
		if (chroma_upscale) {
			/* UV is subsampled by 2 horizontally and vertically */
			orig_height >>= 1;
			orig_width >>= 1;
		} else {
			/* UV is downsampled by 2 horizontally and vertically */
			orig_height <<= 1;
			orig_width <<= 1;
		}

		break;
	case DRM_FORMAT_YUYV:
	case DRM_FORMAT_UYVY:
		/* For YUV422 with 90/270 rotation, we don't upsample chroma */
		if (!FUNC8(rotation)) {
			if (chroma_upscale)
				/* UV is subsampled by 2 horizontally */
				orig_width >>= 1;
			else
				/* UV is downsampled by 2 horizontally */
				orig_width <<= 1;
		}

		/* must use FIR for YUV422 if rotated */
		if ((rotation & DRM_MODE_ROTATE_MASK) != DRM_MODE_ROTATE_0)
			scale_x = scale_y = true;

		break;
	default:
		FUNC0();
		return;
	}

	if (out_width != orig_width)
		scale_x = true;
	if (out_height != orig_height)
		scale_y = true;

	FUNC6(dispc, plane, orig_width, orig_height,
				  out_width, out_height, five_taps,
				  rotation, DISPC_COLOR_COMPONENT_UV);

	if (plane != OMAP_DSS_WB)
		FUNC3(dispc, FUNC2(plane),
			(scale_x || scale_y) ? 1 : 0, 8, 8);

	/* set H scaling */
	FUNC3(dispc, FUNC1(plane), scale_x ? 1 : 0, 5, 5);
	/* set V scaling */
	FUNC3(dispc, FUNC1(plane), scale_y ? 1 : 0, 6, 6);
}