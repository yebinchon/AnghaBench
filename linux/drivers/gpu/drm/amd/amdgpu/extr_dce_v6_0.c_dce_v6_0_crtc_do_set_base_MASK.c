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
typedef  int uint32_t ;
typedef  int u32 ;
struct drm_gem_object {int dummy; } ;
struct drm_framebuffer {int width; int height; int* pitches; struct drm_gem_object** obj; TYPE_3__* format; } ;
struct drm_format_name_buf {int dummy; } ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct TYPE_4__ {int hdisplay; int vdisplay; } ;
struct drm_crtc {TYPE_2__* primary; TYPE_1__ mode; struct drm_device* dev; } ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_crtc {scalar_t__ crtc_offset; } ;
struct amdgpu_bo {int dummy; } ;
struct TYPE_6__ {int format; int* cpp; } ;
struct TYPE_5__ {struct drm_framebuffer* fb; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_GEM_DOMAIN_VRAM ; 
 void* FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 void* ARRAY_1D_TILED_THIN1 ; 
 void* ARRAY_2D_TILED_THIN1 ; 
 int /*<<< orphan*/  ARRAY_MODE ; 
 int /*<<< orphan*/  BANK_HEIGHT ; 
 int /*<<< orphan*/  BANK_WIDTH ; 
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
 int /*<<< orphan*/  GRPH_ARRAY_1D_TILED_THIN1 ; 
 int /*<<< orphan*/  GRPH_ARRAY_2D_TILED_THIN1 ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (unsigned int) ; 
 int FUNC5 (unsigned int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GRPH_BLUE_SEL_R ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GRPH_DEPTH_16BPP ; 
 int /*<<< orphan*/  GRPH_DEPTH_32BPP ; 
 int /*<<< orphan*/  GRPH_DEPTH_8BPP ; 
 int /*<<< orphan*/  GRPH_ENDIAN_8IN16 ; 
 int /*<<< orphan*/  GRPH_ENDIAN_8IN32 ; 
 int /*<<< orphan*/  GRPH_ENDIAN_NONE ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GRPH_FORMAT_ARGB1555 ; 
 int /*<<< orphan*/  GRPH_FORMAT_ARGB2101010 ; 
 int /*<<< orphan*/  GRPH_FORMAT_ARGB4444 ; 
 int /*<<< orphan*/  GRPH_FORMAT_ARGB565 ; 
 int /*<<< orphan*/  GRPH_FORMAT_ARGB8888 ; 
 int /*<<< orphan*/  GRPH_FORMAT_BGRA1010102 ; 
 int /*<<< orphan*/  GRPH_FORMAT_BGRA5551 ; 
 int /*<<< orphan*/  GRPH_FORMAT_INDEXED ; 
 int /*<<< orphan*/  GRPH_LUT_10BIT_BYPASS__GRPH_LUT_10BIT_BYPASS_EN_MASK ; 
 int FUNC10 (unsigned int) ; 
 int FUNC11 (unsigned int) ; 
 int FUNC12 (int) ; 
 int GRPH_PRIMARY_SURFACE_ADDRESS__GRPH_PRIMARY_SURFACE_ADDRESS_MASK ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GRPH_RED_SEL_B ; 
 int FUNC14 (unsigned int) ; 
 int /*<<< orphan*/  MACRO_TILE_ASPECT ; 
 int /*<<< orphan*/  NUM_BANKS ; 
 int /*<<< orphan*/  PIPE_CONFIG ; 
 int /*<<< orphan*/  TILE_SPLIT ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct amdgpu_bo*,scalar_t__*) ; 
 scalar_t__ FUNC18 (struct amdgpu_bo*) ; 
 int FUNC19 (struct amdgpu_bo*,int /*<<< orphan*/ ) ; 
 int FUNC20 (struct amdgpu_bo*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct amdgpu_bo*) ; 
 int /*<<< orphan*/  FUNC22 (struct amdgpu_bo*) ; 
 int /*<<< orphan*/  FUNC23 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC24 (struct drm_crtc*,int) ; 
 int /*<<< orphan*/  FUNC25 (struct drm_crtc*,int) ; 
 int /*<<< orphan*/  FUNC26 (int,struct drm_format_name_buf*) ; 
 struct amdgpu_bo* FUNC27 (struct drm_gem_object*) ; 
 scalar_t__ mmDESKTOP_HEIGHT ; 
 scalar_t__ mmGRPH_CONTROL ; 
 scalar_t__ mmGRPH_FLIP_CONTROL ; 
 scalar_t__ mmGRPH_LUT_10BIT_BYPASS ; 
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
 scalar_t__ mmMASTER_UPDATE_MODE ; 
 scalar_t__ mmVIEWPORT_SIZE ; 
 scalar_t__ mmVIEWPORT_START ; 
 struct amdgpu_crtc* FUNC28 (struct drm_crtc*) ; 
 scalar_t__ FUNC29 (int) ; 
 int FUNC30 (scalar_t__) ; 

__attribute__((used)) static int FUNC31(struct drm_crtc *crtc,
				     struct drm_framebuffer *fb,
				     int x, int y, int atomic)
{
	struct amdgpu_crtc *amdgpu_crtc = FUNC28(crtc);
	struct drm_device *dev = crtc->dev;
	struct amdgpu_device *adev = dev->dev_private;
	struct drm_framebuffer *target_fb;
	struct drm_gem_object *obj;
	struct amdgpu_bo *abo;
	uint64_t fb_location, tiling_flags;
	uint32_t fb_format, fb_pitch_pixels, pipe_config;
	u32 fb_swap = FUNC8(GRPH_ENDIAN_NONE);
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
	abo = FUNC27(obj);
	r = FUNC20(abo, false);
	if (FUNC29(r != 0))
		return r;

	if (!atomic) {
		r = FUNC19(abo, AMDGPU_GEM_DOMAIN_VRAM);
		if (FUNC29(r != 0)) {
			FUNC22(abo);
			return -EINVAL;
		}
	}
	fb_location = FUNC18(abo);

	FUNC17(abo, &tiling_flags);
	FUNC22(abo);

	switch (target_fb->format->format) {
	case DRM_FORMAT_C8:
		fb_format = (FUNC7(GRPH_DEPTH_8BPP) |
			     FUNC9(GRPH_FORMAT_INDEXED));
		break;
	case DRM_FORMAT_XRGB4444:
	case DRM_FORMAT_ARGB4444:
		fb_format = (FUNC7(GRPH_DEPTH_16BPP) |
			     FUNC9(GRPH_FORMAT_ARGB4444));
#ifdef __BIG_ENDIAN
		fb_swap = GRPH_ENDIAN_SWAP(GRPH_ENDIAN_8IN16);
#endif
		break;
	case DRM_FORMAT_XRGB1555:
	case DRM_FORMAT_ARGB1555:
		fb_format = (FUNC7(GRPH_DEPTH_16BPP) |
			     FUNC9(GRPH_FORMAT_ARGB1555));
#ifdef __BIG_ENDIAN
		fb_swap = GRPH_ENDIAN_SWAP(GRPH_ENDIAN_8IN16);
#endif
		break;
	case DRM_FORMAT_BGRX5551:
	case DRM_FORMAT_BGRA5551:
		fb_format = (FUNC7(GRPH_DEPTH_16BPP) |
			     FUNC9(GRPH_FORMAT_BGRA5551));
#ifdef __BIG_ENDIAN
		fb_swap = GRPH_ENDIAN_SWAP(GRPH_ENDIAN_8IN16);
#endif
		break;
	case DRM_FORMAT_RGB565:
		fb_format = (FUNC7(GRPH_DEPTH_16BPP) |
			     FUNC9(GRPH_FORMAT_ARGB565));
#ifdef __BIG_ENDIAN
		fb_swap = GRPH_ENDIAN_SWAP(GRPH_ENDIAN_8IN16);
#endif
		break;
	case DRM_FORMAT_XRGB8888:
	case DRM_FORMAT_ARGB8888:
		fb_format = (FUNC7(GRPH_DEPTH_32BPP) |
			     FUNC9(GRPH_FORMAT_ARGB8888));
#ifdef __BIG_ENDIAN
		fb_swap = GRPH_ENDIAN_SWAP(GRPH_ENDIAN_8IN32);
#endif
		break;
	case DRM_FORMAT_XRGB2101010:
	case DRM_FORMAT_ARGB2101010:
		fb_format = (FUNC7(GRPH_DEPTH_32BPP) |
			     FUNC9(GRPH_FORMAT_ARGB2101010));
#ifdef __BIG_ENDIAN
		fb_swap = GRPH_ENDIAN_SWAP(GRPH_ENDIAN_8IN32);
#endif
		/* Greater 8 bpc fb needs to bypass hw-lut to retain precision */
		bypass_lut = true;
		break;
	case DRM_FORMAT_BGRX1010102:
	case DRM_FORMAT_BGRA1010102:
		fb_format = (FUNC7(GRPH_DEPTH_32BPP) |
			     FUNC9(GRPH_FORMAT_BGRA1010102));
#ifdef __BIG_ENDIAN
		fb_swap = GRPH_ENDIAN_SWAP(GRPH_ENDIAN_8IN32);
#endif
		/* Greater 8 bpc fb needs to bypass hw-lut to retain precision */
		bypass_lut = true;
		break;
	case DRM_FORMAT_XBGR8888:
	case DRM_FORMAT_ABGR8888:
		fb_format = (FUNC7(GRPH_DEPTH_32BPP) |
			     FUNC9(GRPH_FORMAT_ARGB8888));
		fb_swap = (FUNC13(GRPH_RED_SEL_B) |
			   FUNC6(GRPH_BLUE_SEL_R));
#ifdef __BIG_ENDIAN
		fb_swap |= GRPH_ENDIAN_SWAP(GRPH_ENDIAN_8IN32);
#endif
		break;
	default:
		FUNC2("Unsupported screen format %s\n",
		          FUNC26(target_fb->format->format, &format_name));
		return -EINVAL;
	}

	if (FUNC0(tiling_flags, ARRAY_MODE) == ARRAY_2D_TILED_THIN1) {
		unsigned bankw, bankh, mtaspect, tile_split, num_banks;

		bankw = FUNC0(tiling_flags, BANK_WIDTH);
		bankh = FUNC0(tiling_flags, BANK_HEIGHT);
		mtaspect = FUNC0(tiling_flags, MACRO_TILE_ASPECT);
		tile_split = FUNC0(tiling_flags, TILE_SPLIT);
		num_banks = FUNC0(tiling_flags, NUM_BANKS);

		fb_format |= FUNC11(num_banks);
		fb_format |= FUNC3(GRPH_ARRAY_2D_TILED_THIN1);
		fb_format |= FUNC14(tile_split);
		fb_format |= FUNC5(bankw);
		fb_format |= FUNC4(bankh);
		fb_format |= FUNC10(mtaspect);
	} else if (FUNC0(tiling_flags, ARRAY_MODE) == ARRAY_1D_TILED_THIN1) {
		fb_format |= FUNC3(GRPH_ARRAY_1D_TILED_THIN1);
	}

	pipe_config = FUNC0(tiling_flags, PIPE_CONFIG);
	fb_format |= FUNC12(pipe_config);

	FUNC25(crtc, false);

	/* Make sure surface address is updated at vertical blank rather than
	 * horizontal blank
	 */
	FUNC15(mmGRPH_FLIP_CONTROL + amdgpu_crtc->crtc_offset, 0);

	FUNC15(mmGRPH_PRIMARY_SURFACE_ADDRESS_HIGH + amdgpu_crtc->crtc_offset,
	       FUNC30(fb_location));
	FUNC15(mmGRPH_SECONDARY_SURFACE_ADDRESS_HIGH + amdgpu_crtc->crtc_offset,
	       FUNC30(fb_location));
	FUNC15(mmGRPH_PRIMARY_SURFACE_ADDRESS + amdgpu_crtc->crtc_offset,
	       (u32)fb_location & GRPH_PRIMARY_SURFACE_ADDRESS__GRPH_PRIMARY_SURFACE_ADDRESS_MASK);
	FUNC15(mmGRPH_SECONDARY_SURFACE_ADDRESS + amdgpu_crtc->crtc_offset,
	       (u32) fb_location & GRPH_PRIMARY_SURFACE_ADDRESS__GRPH_PRIMARY_SURFACE_ADDRESS_MASK);
	FUNC15(mmGRPH_CONTROL + amdgpu_crtc->crtc_offset, fb_format);
	FUNC15(mmGRPH_SWAP_CNTL + amdgpu_crtc->crtc_offset, fb_swap);

	/*
	 * The LUT only has 256 slots for indexing by a 8 bpc fb. Bypass the LUT
	 * for > 8 bpc scanout to avoid truncation of fb indices to 8 msb's, to
	 * retain the full precision throughout the pipeline.
	 */
	FUNC16(mmGRPH_LUT_10BIT_BYPASS + amdgpu_crtc->crtc_offset,
		 (bypass_lut ? GRPH_LUT_10BIT_BYPASS__GRPH_LUT_10BIT_BYPASS_EN_MASK : 0),
		 ~GRPH_LUT_10BIT_BYPASS__GRPH_LUT_10BIT_BYPASS_EN_MASK);

	if (bypass_lut)
		FUNC1("Bypassing hardware LUT due to 10 bit fb scanout.\n");

	FUNC15(mmGRPH_SURFACE_OFFSET_X + amdgpu_crtc->crtc_offset, 0);
	FUNC15(mmGRPH_SURFACE_OFFSET_Y + amdgpu_crtc->crtc_offset, 0);
	FUNC15(mmGRPH_X_START + amdgpu_crtc->crtc_offset, 0);
	FUNC15(mmGRPH_Y_START + amdgpu_crtc->crtc_offset, 0);
	FUNC15(mmGRPH_X_END + amdgpu_crtc->crtc_offset, target_fb->width);
	FUNC15(mmGRPH_Y_END + amdgpu_crtc->crtc_offset, target_fb->height);

	fb_pitch_pixels = target_fb->pitches[0] / target_fb->format->cpp[0];
	FUNC15(mmGRPH_PITCH + amdgpu_crtc->crtc_offset, fb_pitch_pixels);

	FUNC24(crtc, true);

	FUNC15(mmDESKTOP_HEIGHT + amdgpu_crtc->crtc_offset,
		       target_fb->height);
	x &= ~3;
	y &= ~1;
	FUNC15(mmVIEWPORT_START + amdgpu_crtc->crtc_offset,
	       (x << 16) | y);
	viewport_w = crtc->mode.hdisplay;
	viewport_h = (crtc->mode.vdisplay + 1) & ~1;

	FUNC15(mmVIEWPORT_SIZE + amdgpu_crtc->crtc_offset,
	       (viewport_w << 16) | viewport_h);

	/* set pageflip to happen anywhere in vblank interval */
	FUNC15(mmMASTER_UPDATE_MODE + amdgpu_crtc->crtc_offset, 0);

	if (!atomic && fb && fb != crtc->primary->fb) {
		abo = FUNC27(fb->obj[0]);
		r = FUNC20(abo, true);
		if (FUNC29(r != 0))
			return r;
		FUNC21(abo);
		FUNC22(abo);
	}

	/* Bytes per pixel may have changed */
	FUNC23(adev);

	return 0;

}