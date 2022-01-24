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
typedef  scalar_t__ uint64_t ;
typedef  unsigned int uint32_t ;
typedef  unsigned int u32 ;
struct drm_gem_object {int dummy; } ;
struct drm_framebuffer {unsigned int width; unsigned int height; unsigned int* pitches; struct drm_gem_object** obj; TYPE_3__* format; } ;
struct drm_format_name_buf {int dummy; } ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct TYPE_4__ {unsigned int hdisplay; int vdisplay; } ;
struct drm_crtc {TYPE_2__* primary; TYPE_1__ mode; struct drm_device* dev; } ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_crtc {scalar_t__ crtc_offset; } ;
struct amdgpu_bo {int dummy; } ;
struct TYPE_6__ {int format; unsigned int* cpp; } ;
struct TYPE_5__ {struct drm_framebuffer* fb; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_GEM_DOMAIN_VRAM ; 
 unsigned int FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 unsigned int ARRAY_1D_TILED_THIN1 ; 
 unsigned int ARRAY_2D_TILED_THIN1 ; 
 int /*<<< orphan*/  ARRAY_MODE ; 
 int /*<<< orphan*/  BANK_HEIGHT ; 
 int /*<<< orphan*/  BANK_WIDTH ; 
 unsigned int DISPLAY_MICRO_TILING ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
#define  DRM_FORMAT_ABGR8888 143 
#define  DRM_FORMAT_ARGB1555 142 
#define  DRM_FORMAT_ARGB2101010 141 
#define  DRM_FORMAT_ARGB4444 140 
#define  DRM_FORMAT_ARGB8888 139 
#define  DRM_FORMAT_BGRA1010102 138 
#define  DRM_FORMAT_BGRA5551 137 
#define  DRM_FORMAT_BGRX1010102 136 
#define  DRM_FORMAT_BGRX5551 135 
#define  DRM_FORMAT_C8 134 
#define  DRM_FORMAT_RGB565 133 
#define  DRM_FORMAT_XBGR8888 132 
#define  DRM_FORMAT_XRGB1555 131 
#define  DRM_FORMAT_XRGB2101010 130 
#define  DRM_FORMAT_XRGB4444 129 
#define  DRM_FORMAT_XRGB8888 128 
 int EINVAL ; 
 unsigned int GRPH_ARRAY_1D_TILED_THIN1 ; 
 unsigned int GRPH_ARRAY_2D_TILED_THIN1 ; 
 unsigned int GRPH_BLUE_SEL_R ; 
 unsigned int GRPH_CONTROL__GRPH_ARRAY_MODE__SHIFT ; 
 unsigned int GRPH_CONTROL__GRPH_BANK_HEIGHT__SHIFT ; 
 unsigned int GRPH_CONTROL__GRPH_BANK_WIDTH__SHIFT ; 
 unsigned int GRPH_CONTROL__GRPH_DEPTH__SHIFT ; 
 unsigned int GRPH_CONTROL__GRPH_FORMAT__SHIFT ; 
 unsigned int GRPH_CONTROL__GRPH_MACRO_TILE_ASPECT__SHIFT ; 
 unsigned int GRPH_CONTROL__GRPH_MICRO_TILE_MODE__SHIFT ; 
 unsigned int GRPH_CONTROL__GRPH_NUM_BANKS__SHIFT ; 
 unsigned int GRPH_CONTROL__GRPH_PIPE_CONFIG__SHIFT ; 
 unsigned int GRPH_CONTROL__GRPH_TILE_SPLIT__SHIFT ; 
 unsigned int GRPH_DEPTH_16BPP ; 
 unsigned int GRPH_DEPTH_32BPP ; 
 unsigned int GRPH_DEPTH_8BPP ; 
 unsigned int GRPH_ENDIAN_8IN16 ; 
 unsigned int GRPH_ENDIAN_8IN32 ; 
 unsigned int GRPH_ENDIAN_NONE ; 
 unsigned int GRPH_FORMAT_ARGB1555 ; 
 unsigned int GRPH_FORMAT_ARGB2101010 ; 
 unsigned int GRPH_FORMAT_ARGB4444 ; 
 unsigned int GRPH_FORMAT_ARGB565 ; 
 unsigned int GRPH_FORMAT_ARGB8888 ; 
 unsigned int GRPH_FORMAT_BGRA1010102 ; 
 unsigned int GRPH_FORMAT_BGRA5551 ; 
 unsigned int GRPH_FORMAT_INDEXED ; 
 unsigned int GRPH_PRIMARY_SURFACE_ADDRESS__GRPH_PRIMARY_SURFACE_ADDRESS_MASK ; 
 unsigned int GRPH_RED_SEL_B ; 
 unsigned int GRPH_SECONDARY_SURFACE_ADDRESS__GRPH_SECONDARY_SURFACE_ADDRESS_MASK ; 
 unsigned int GRPH_SWAP_CNTL__GRPH_BLUE_CROSSBAR__SHIFT ; 
 unsigned int GRPH_SWAP_CNTL__GRPH_ENDIAN_SWAP__SHIFT ; 
 unsigned int GRPH_SWAP_CNTL__GRPH_RED_CROSSBAR__SHIFT ; 
 int /*<<< orphan*/  LUT_10BIT_BYPASS_EN ; 
 int /*<<< orphan*/  MACRO_TILE_ASPECT ; 
 int /*<<< orphan*/  NUM_BANKS ; 
 int /*<<< orphan*/  PIPE_CONFIG ; 
 int /*<<< orphan*/  TILE_SPLIT ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_bo*,scalar_t__*) ; 
 scalar_t__ FUNC6 (struct amdgpu_bo*) ; 
 int FUNC7 (struct amdgpu_bo*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct amdgpu_bo*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct amdgpu_bo*) ; 
 int /*<<< orphan*/  FUNC10 (struct amdgpu_bo*) ; 
 int /*<<< orphan*/  FUNC11 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_crtc*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_crtc*,int) ; 
 int /*<<< orphan*/  FUNC14 (int,struct drm_format_name_buf*) ; 
 struct amdgpu_bo* FUNC15 (struct drm_gem_object*) ; 
 scalar_t__ mmGRPH_CONTROL ; 
 scalar_t__ mmGRPH_FLIP_CONTROL ; 
 scalar_t__ mmGRPH_LUT_10BIT_BYPASS_CONTROL ; 
 scalar_t__ mmGRPH_PITCH ; 
 scalar_t__ mmGRPH_PRIMARY_SURFACE_ADDRESS ; 
 scalar_t__ mmGRPH_PRIMARY_SURFACE_ADDRESS_HIGH ; 
 scalar_t__ mmGRPH_SECONDARY_SURFACE_ADDRESS ; 
 scalar_t__ mmGRPH_SECONDARY_SURFACE_ADDRESS_HIGH ; 
 scalar_t__ mmGRPH_SURFACE_OFFSET_X ; 
 scalar_t__ mmGRPH_SURFACE_OFFSET_Y ; 
 scalar_t__ mmGRPH_SWAP_CNTL ; 
 scalar_t__ mmGRPH_X_END ; 
 scalar_t__ mmGRPH_X_START ; 
 scalar_t__ mmGRPH_Y_END ; 
 scalar_t__ mmGRPH_Y_START ; 
 scalar_t__ mmLB_DESKTOP_HEIGHT ; 
 scalar_t__ mmMASTER_UPDATE_MODE ; 
 scalar_t__ mmVIEWPORT_SIZE ; 
 scalar_t__ mmVIEWPORT_START ; 
 struct amdgpu_crtc* FUNC16 (struct drm_crtc*) ; 
 scalar_t__ FUNC17 (int) ; 
 unsigned int FUNC18 (scalar_t__) ; 

__attribute__((used)) static int FUNC19(struct drm_crtc *crtc,
				     struct drm_framebuffer *fb,
				     int x, int y, int atomic)
{
	struct amdgpu_crtc *amdgpu_crtc = FUNC16(crtc);
	struct drm_device *dev = crtc->dev;
	struct amdgpu_device *adev = dev->dev_private;
	struct drm_framebuffer *target_fb;
	struct drm_gem_object *obj;
	struct amdgpu_bo *abo;
	uint64_t fb_location, tiling_flags;
	uint32_t fb_format, fb_pitch_pixels;
	u32 fb_swap = (GRPH_ENDIAN_NONE << GRPH_SWAP_CNTL__GRPH_ENDIAN_SWAP__SHIFT);
	u32 pipe_config;
	u32 viewport_w, viewport_h;
	int r;
	bool bypass_lut = false;
	struct drm_format_name_buf format_name;

	/* no fb bound */
	if (!atomic && !crtc->primary->fb) {
		FUNC1("No FB bound\n");
		return 0;
	}

	if (atomic)
		target_fb = fb;
	else
		target_fb = crtc->primary->fb;

	/* If atomic, assume fb object is pinned & idle & fenced and
	 * just update base pointers
	 */
	obj = target_fb->obj[0];
	abo = FUNC15(obj);
	r = FUNC8(abo, false);
	if (FUNC17(r != 0))
		return r;

	if (!atomic) {
		r = FUNC7(abo, AMDGPU_GEM_DOMAIN_VRAM);
		if (FUNC17(r != 0)) {
			FUNC10(abo);
			return -EINVAL;
		}
	}
	fb_location = FUNC6(abo);

	FUNC5(abo, &tiling_flags);
	FUNC10(abo);

	pipe_config = FUNC0(tiling_flags, PIPE_CONFIG);

	switch (target_fb->format->format) {
	case DRM_FORMAT_C8:
		fb_format = ((GRPH_DEPTH_8BPP << GRPH_CONTROL__GRPH_DEPTH__SHIFT) |
			     (GRPH_FORMAT_INDEXED << GRPH_CONTROL__GRPH_FORMAT__SHIFT));
		break;
	case DRM_FORMAT_XRGB4444:
	case DRM_FORMAT_ARGB4444:
		fb_format = ((GRPH_DEPTH_16BPP << GRPH_CONTROL__GRPH_DEPTH__SHIFT) |
			     (GRPH_FORMAT_ARGB4444 << GRPH_CONTROL__GRPH_FORMAT__SHIFT));
#ifdef __BIG_ENDIAN
		fb_swap = (GRPH_ENDIAN_8IN16 << GRPH_SWAP_CNTL__GRPH_ENDIAN_SWAP__SHIFT);
#endif
		break;
	case DRM_FORMAT_XRGB1555:
	case DRM_FORMAT_ARGB1555:
		fb_format = ((GRPH_DEPTH_16BPP << GRPH_CONTROL__GRPH_DEPTH__SHIFT) |
			     (GRPH_FORMAT_ARGB1555 << GRPH_CONTROL__GRPH_FORMAT__SHIFT));
#ifdef __BIG_ENDIAN
		fb_swap = (GRPH_ENDIAN_8IN16 << GRPH_SWAP_CNTL__GRPH_ENDIAN_SWAP__SHIFT);
#endif
		break;
	case DRM_FORMAT_BGRX5551:
	case DRM_FORMAT_BGRA5551:
		fb_format = ((GRPH_DEPTH_16BPP << GRPH_CONTROL__GRPH_DEPTH__SHIFT) |
			     (GRPH_FORMAT_BGRA5551 << GRPH_CONTROL__GRPH_FORMAT__SHIFT));
#ifdef __BIG_ENDIAN
		fb_swap = (GRPH_ENDIAN_8IN16 << GRPH_SWAP_CNTL__GRPH_ENDIAN_SWAP__SHIFT);
#endif
		break;
	case DRM_FORMAT_RGB565:
		fb_format = ((GRPH_DEPTH_16BPP << GRPH_CONTROL__GRPH_DEPTH__SHIFT) |
			     (GRPH_FORMAT_ARGB565 << GRPH_CONTROL__GRPH_FORMAT__SHIFT));
#ifdef __BIG_ENDIAN
		fb_swap = (GRPH_ENDIAN_8IN16 << GRPH_SWAP_CNTL__GRPH_ENDIAN_SWAP__SHIFT);
#endif
		break;
	case DRM_FORMAT_XRGB8888:
	case DRM_FORMAT_ARGB8888:
		fb_format = ((GRPH_DEPTH_32BPP << GRPH_CONTROL__GRPH_DEPTH__SHIFT) |
			     (GRPH_FORMAT_ARGB8888 << GRPH_CONTROL__GRPH_FORMAT__SHIFT));
#ifdef __BIG_ENDIAN
		fb_swap = (GRPH_ENDIAN_8IN32 << GRPH_SWAP_CNTL__GRPH_ENDIAN_SWAP__SHIFT);
#endif
		break;
	case DRM_FORMAT_XRGB2101010:
	case DRM_FORMAT_ARGB2101010:
		fb_format = ((GRPH_DEPTH_32BPP << GRPH_CONTROL__GRPH_DEPTH__SHIFT) |
			     (GRPH_FORMAT_ARGB2101010 << GRPH_CONTROL__GRPH_FORMAT__SHIFT));
#ifdef __BIG_ENDIAN
		fb_swap = (GRPH_ENDIAN_8IN32 << GRPH_SWAP_CNTL__GRPH_ENDIAN_SWAP__SHIFT);
#endif
		/* Greater 8 bpc fb needs to bypass hw-lut to retain precision */
		bypass_lut = true;
		break;
	case DRM_FORMAT_BGRX1010102:
	case DRM_FORMAT_BGRA1010102:
		fb_format = ((GRPH_DEPTH_32BPP << GRPH_CONTROL__GRPH_DEPTH__SHIFT) |
			     (GRPH_FORMAT_BGRA1010102 << GRPH_CONTROL__GRPH_FORMAT__SHIFT));
#ifdef __BIG_ENDIAN
		fb_swap = (GRPH_ENDIAN_8IN32 << GRPH_SWAP_CNTL__GRPH_ENDIAN_SWAP__SHIFT);
#endif
		/* Greater 8 bpc fb needs to bypass hw-lut to retain precision */
		bypass_lut = true;
		break;
	case DRM_FORMAT_XBGR8888:
	case DRM_FORMAT_ABGR8888:
		fb_format = ((GRPH_DEPTH_32BPP << GRPH_CONTROL__GRPH_DEPTH__SHIFT) |
		             (GRPH_FORMAT_ARGB8888 << GRPH_CONTROL__GRPH_FORMAT__SHIFT));
		fb_swap = ((GRPH_RED_SEL_B << GRPH_SWAP_CNTL__GRPH_RED_CROSSBAR__SHIFT) |
		           (GRPH_BLUE_SEL_R << GRPH_SWAP_CNTL__GRPH_BLUE_CROSSBAR__SHIFT));
#ifdef __BIG_ENDIAN
		fb_swap |= (GRPH_ENDIAN_8IN32 << GRPH_SWAP_CNTL__GRPH_ENDIAN_SWAP__SHIFT);
#endif
		break;
	default:
		FUNC2("Unsupported screen format %s\n",
		          FUNC14(target_fb->format->format, &format_name));
		return -EINVAL;
	}

	if (FUNC0(tiling_flags, ARRAY_MODE) == ARRAY_2D_TILED_THIN1) {
		unsigned bankw, bankh, mtaspect, tile_split, num_banks;

		bankw = FUNC0(tiling_flags, BANK_WIDTH);
		bankh = FUNC0(tiling_flags, BANK_HEIGHT);
		mtaspect = FUNC0(tiling_flags, MACRO_TILE_ASPECT);
		tile_split = FUNC0(tiling_flags, TILE_SPLIT);
		num_banks = FUNC0(tiling_flags, NUM_BANKS);

		fb_format |= (num_banks << GRPH_CONTROL__GRPH_NUM_BANKS__SHIFT);
		fb_format |= (GRPH_ARRAY_2D_TILED_THIN1 << GRPH_CONTROL__GRPH_ARRAY_MODE__SHIFT);
		fb_format |= (tile_split << GRPH_CONTROL__GRPH_TILE_SPLIT__SHIFT);
		fb_format |= (bankw << GRPH_CONTROL__GRPH_BANK_WIDTH__SHIFT);
		fb_format |= (bankh << GRPH_CONTROL__GRPH_BANK_HEIGHT__SHIFT);
		fb_format |= (mtaspect << GRPH_CONTROL__GRPH_MACRO_TILE_ASPECT__SHIFT);
		fb_format |= (DISPLAY_MICRO_TILING << GRPH_CONTROL__GRPH_MICRO_TILE_MODE__SHIFT);
	} else if (FUNC0(tiling_flags, ARRAY_MODE) == ARRAY_1D_TILED_THIN1) {
		fb_format |= (GRPH_ARRAY_1D_TILED_THIN1 << GRPH_CONTROL__GRPH_ARRAY_MODE__SHIFT);
	}

	fb_format |= (pipe_config << GRPH_CONTROL__GRPH_PIPE_CONFIG__SHIFT);

	FUNC13(crtc, false);

	/* Make sure surface address is updated at vertical blank rather than
	 * horizontal blank
	 */
	FUNC3(mmGRPH_FLIP_CONTROL + amdgpu_crtc->crtc_offset, 0);

	FUNC3(mmGRPH_PRIMARY_SURFACE_ADDRESS_HIGH + amdgpu_crtc->crtc_offset,
	       FUNC18(fb_location));
	FUNC3(mmGRPH_SECONDARY_SURFACE_ADDRESS_HIGH + amdgpu_crtc->crtc_offset,
	       FUNC18(fb_location));
	FUNC3(mmGRPH_PRIMARY_SURFACE_ADDRESS + amdgpu_crtc->crtc_offset,
	       (u32)fb_location & GRPH_PRIMARY_SURFACE_ADDRESS__GRPH_PRIMARY_SURFACE_ADDRESS_MASK);
	FUNC3(mmGRPH_SECONDARY_SURFACE_ADDRESS + amdgpu_crtc->crtc_offset,
	       (u32) fb_location & GRPH_SECONDARY_SURFACE_ADDRESS__GRPH_SECONDARY_SURFACE_ADDRESS_MASK);
	FUNC3(mmGRPH_CONTROL + amdgpu_crtc->crtc_offset, fb_format);
	FUNC3(mmGRPH_SWAP_CNTL + amdgpu_crtc->crtc_offset, fb_swap);

	/*
	 * The LUT only has 256 slots for indexing by a 8 bpc fb. Bypass the LUT
	 * for > 8 bpc scanout to avoid truncation of fb indices to 8 msb's, to
	 * retain the full precision throughout the pipeline.
	 */
	FUNC4(mmGRPH_LUT_10BIT_BYPASS_CONTROL + amdgpu_crtc->crtc_offset,
		 (bypass_lut ? LUT_10BIT_BYPASS_EN : 0),
		 ~LUT_10BIT_BYPASS_EN);

	if (bypass_lut)
		FUNC1("Bypassing hardware LUT due to 10 bit fb scanout.\n");

	FUNC3(mmGRPH_SURFACE_OFFSET_X + amdgpu_crtc->crtc_offset, 0);
	FUNC3(mmGRPH_SURFACE_OFFSET_Y + amdgpu_crtc->crtc_offset, 0);
	FUNC3(mmGRPH_X_START + amdgpu_crtc->crtc_offset, 0);
	FUNC3(mmGRPH_Y_START + amdgpu_crtc->crtc_offset, 0);
	FUNC3(mmGRPH_X_END + amdgpu_crtc->crtc_offset, target_fb->width);
	FUNC3(mmGRPH_Y_END + amdgpu_crtc->crtc_offset, target_fb->height);

	fb_pitch_pixels = target_fb->pitches[0] / target_fb->format->cpp[0];
	FUNC3(mmGRPH_PITCH + amdgpu_crtc->crtc_offset, fb_pitch_pixels);

	FUNC12(crtc, true);

	FUNC3(mmLB_DESKTOP_HEIGHT + amdgpu_crtc->crtc_offset,
	       target_fb->height);

	x &= ~3;
	y &= ~1;
	FUNC3(mmVIEWPORT_START + amdgpu_crtc->crtc_offset,
	       (x << 16) | y);
	viewport_w = crtc->mode.hdisplay;
	viewport_h = (crtc->mode.vdisplay + 1) & ~1;
	FUNC3(mmVIEWPORT_SIZE + amdgpu_crtc->crtc_offset,
	       (viewport_w << 16) | viewport_h);

	/* set pageflip to happen anywhere in vblank interval */
	FUNC3(mmMASTER_UPDATE_MODE + amdgpu_crtc->crtc_offset, 0);

	if (!atomic && fb && fb != crtc->primary->fb) {
		abo = FUNC15(fb->obj[0]);
		r = FUNC8(abo, true);
		if (FUNC17(r != 0))
			return r;
		FUNC9(abo);
		FUNC10(abo);
	}

	/* Bytes per pixel may have changed */
	FUNC11(adev);

	return 0;
}