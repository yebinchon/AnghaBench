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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct videomode {int hactive; int vactive; int flags; int vsync_len; int vback_porch; int vfront_porch; } ;
struct omap_dss_writeback_info {int /*<<< orphan*/  fourcc; int /*<<< orphan*/  rotation_type; int /*<<< orphan*/  pre_mult_alpha; int /*<<< orphan*/  rotation; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  buf_width; int /*<<< orphan*/  p_uv_addr; int /*<<< orphan*/  paddr; } ;
struct dispc_device {int dummy; } ;
typedef  enum omap_plane_id { ____Placeholder_omap_plane_id } omap_plane_id ;
typedef  enum omap_overlay_caps { ____Placeholder_omap_overlay_caps } omap_overlay_caps ;
typedef  enum dss_writeback_channel { ____Placeholder_dss_writeback_channel } dss_writeback_channel ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int DISPLAY_FLAGS_INTERLACED ; 
#define  DRM_FORMAT_ARGB1555 135 
#define  DRM_FORMAT_ARGB4444 134 
#define  DRM_FORMAT_RGB565 133 
#define  DRM_FORMAT_RGB888 132 
#define  DRM_FORMAT_RGBA4444 131 
#define  DRM_FORMAT_RGBX4444 130 
#define  DRM_FORMAT_XRGB1555 129 
#define  DRM_FORMAT_XRGB4444 128 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int DSS_WB_TV_MGR ; 
 int FUNC3 (int,int,int,int) ; 
 int OMAP_DSS_OVL_CAP_PRE_MULT_ALPHA ; 
 int OMAP_DSS_OVL_CAP_SCALE ; 
 int OMAP_DSS_WB ; 
 int /*<<< orphan*/  FUNC4 (struct dispc_device*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct dispc_device*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const,int const,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const,int /*<<< orphan*/ ,int /*<<< orphan*/  const,int /*<<< orphan*/ ,int const,struct videomode const*,int) ; 
 int FUNC6 (struct dispc_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct dispc_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int,unsigned int) ; 

__attribute__((used)) static int FUNC9(struct dispc_device *dispc,
		   const struct omap_dss_writeback_info *wi,
		   bool mem_to_mem, const struct videomode *vm,
		   enum dss_writeback_channel channel_in)
{
	int r;
	u32 l;
	enum omap_plane_id plane = OMAP_DSS_WB;
	const int pos_x = 0, pos_y = 0;
	const u8 zorder = 0, global_alpha = 0;
	const bool replication = true;
	bool truncation;
	int in_width = vm->hactive;
	int in_height = vm->vactive;
	enum omap_overlay_caps caps =
		OMAP_DSS_OVL_CAP_SCALE | OMAP_DSS_OVL_CAP_PRE_MULT_ALPHA;

	if (vm->flags & DISPLAY_FLAGS_INTERLACED)
		in_height /= 2;

	FUNC2("dispc_wb_setup, pa %x, pa_uv %x, %d,%d -> %dx%d, cmode %x, "
		"rot %d\n", wi->paddr, wi->p_uv_addr, in_width,
		in_height, wi->width, wi->height, wi->fourcc, wi->rotation);

	r = FUNC5(dispc, plane, caps, wi->paddr, wi->p_uv_addr,
		wi->buf_width, pos_x, pos_y, in_width, in_height, wi->width,
		wi->height, wi->fourcc, wi->rotation, zorder,
		wi->pre_mult_alpha, global_alpha, wi->rotation_type,
		replication, vm, mem_to_mem);
	if (r)
		return r;

	switch (wi->fourcc) {
	case DRM_FORMAT_RGB565:
	case DRM_FORMAT_RGB888:
	case DRM_FORMAT_ARGB4444:
	case DRM_FORMAT_RGBA4444:
	case DRM_FORMAT_RGBX4444:
	case DRM_FORMAT_ARGB1555:
	case DRM_FORMAT_XRGB1555:
	case DRM_FORMAT_XRGB4444:
		truncation = true;
		break;
	default:
		truncation = false;
		break;
	}

	/* setup extra DISPC_WB_ATTRIBUTES */
	l = FUNC6(dispc, FUNC0(plane));
	l = FUNC3(l, truncation, 10, 10);	/* TRUNCATIONENABLE */
	l = FUNC3(l, channel_in, 18, 16);	/* CHANNELIN */
	l = FUNC3(l, mem_to_mem, 19, 19);	/* WRITEBACKMODE */
	if (mem_to_mem)
		l = FUNC3(l, 1, 26, 24);	/* CAPTUREMODE */
	else
		l = FUNC3(l, 0, 26, 24);	/* CAPTUREMODE */
	FUNC7(dispc, FUNC0(plane), l);

	if (mem_to_mem) {
		/* WBDELAYCOUNT */
		FUNC4(dispc, FUNC1(plane), 0, 7, 0);
	} else {
		u32 wbdelay;

		if (channel_in == DSS_WB_TV_MGR)
			wbdelay = vm->vsync_len + vm->vback_porch;
		else
			wbdelay = vm->vfront_porch + vm->vsync_len +
				vm->vback_porch;

		if (vm->flags & DISPLAY_FLAGS_INTERLACED)
			wbdelay /= 2;

		wbdelay = FUNC8(wbdelay, 255u);

		/* WBDELAYCOUNT */
		FUNC4(dispc, FUNC1(plane), wbdelay, 7, 0);
	}

	return 0;
}