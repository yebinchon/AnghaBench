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
struct radeon_device {scalar_t__ family; } ;
struct radeon_crtc {scalar_t__ crtc_id; scalar_t__ crtc_offset; } ;
struct radeon_bo {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct drm_framebuffer {int width; int height; int* pitches; struct drm_gem_object** obj; TYPE_3__* format; } ;
struct drm_format_name_buf {int dummy; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct TYPE_4__ {int hdisplay; int vdisplay; } ;
struct drm_crtc {TYPE_2__* primary; TYPE_1__ mode; struct drm_device* dev; } ;
struct TYPE_6__ {int format; int* cpp; } ;
struct TYPE_5__ {struct drm_framebuffer* fb; } ;

/* Variables and functions */
 scalar_t__ AVIVO_D1GRPH_CONTROL ; 
 int AVIVO_D1GRPH_CONTROL_16BPP_ARGB1555 ; 
 int AVIVO_D1GRPH_CONTROL_16BPP_ARGB4444 ; 
 int AVIVO_D1GRPH_CONTROL_16BPP_RGB565 ; 
 int AVIVO_D1GRPH_CONTROL_32BPP_ARGB2101010 ; 
 int AVIVO_D1GRPH_CONTROL_32BPP_ARGB8888 ; 
 int AVIVO_D1GRPH_CONTROL_8BPP_INDEXED ; 
 int AVIVO_D1GRPH_CONTROL_DEPTH_16BPP ; 
 int AVIVO_D1GRPH_CONTROL_DEPTH_32BPP ; 
 int AVIVO_D1GRPH_CONTROL_DEPTH_8BPP ; 
 scalar_t__ AVIVO_D1GRPH_ENABLE ; 
 scalar_t__ AVIVO_D1GRPH_FLIP_CONTROL ; 
 scalar_t__ AVIVO_D1GRPH_LUT_SEL ; 
 int AVIVO_D1GRPH_MACRO_ADDRESS_MODE ; 
 scalar_t__ AVIVO_D1GRPH_PITCH ; 
 scalar_t__ AVIVO_D1GRPH_PRIMARY_SURFACE_ADDRESS ; 
 scalar_t__ AVIVO_D1GRPH_SECONDARY_SURFACE_ADDRESS ; 
 scalar_t__ AVIVO_D1GRPH_SURFACE_OFFSET_X ; 
 scalar_t__ AVIVO_D1GRPH_SURFACE_OFFSET_Y ; 
 int AVIVO_D1GRPH_SWAP_RB ; 
 int AVIVO_D1GRPH_TILED ; 
 scalar_t__ AVIVO_D1GRPH_X_END ; 
 scalar_t__ AVIVO_D1GRPH_X_START ; 
 scalar_t__ AVIVO_D1GRPH_Y_END ; 
 scalar_t__ AVIVO_D1GRPH_Y_START ; 
 scalar_t__ AVIVO_D1MODE_DESKTOP_HEIGHT ; 
 scalar_t__ AVIVO_D1MODE_MASTER_UPDATE_MODE ; 
 scalar_t__ AVIVO_D1MODE_VIEWPORT_SIZE ; 
 scalar_t__ AVIVO_D1MODE_VIEWPORT_START ; 
 scalar_t__ AVIVO_D1VGA_CONTROL ; 
 scalar_t__ AVIVO_D2VGA_CONTROL ; 
 int /*<<< orphan*/  AVIVO_LUT_10BIT_BYPASS_EN ; 
 scalar_t__ CHIP_R600 ; 
 scalar_t__ CHIP_RV770 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
#define  DRM_FORMAT_ABGR8888 138 
#define  DRM_FORMAT_ARGB2101010 137 
#define  DRM_FORMAT_ARGB4444 136 
#define  DRM_FORMAT_ARGB8888 135 
#define  DRM_FORMAT_C8 134 
#define  DRM_FORMAT_RGB565 133 
#define  DRM_FORMAT_XBGR8888 132 
#define  DRM_FORMAT_XRGB1555 131 
#define  DRM_FORMAT_XRGB2101010 130 
#define  DRM_FORMAT_XRGB4444 129 
#define  DRM_FORMAT_XRGB8888 128 
 int EINVAL ; 
 int R600_D1GRPH_ARRAY_MODE_1D_TILED_THIN1 ; 
 int R600_D1GRPH_ARRAY_MODE_2D_TILED_THIN1 ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R600_D1GRPH_BLUE_SEL_R ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R600_D1GRPH_RED_SEL_B ; 
 scalar_t__ R600_D1GRPH_SWAP_CONTROL ; 
 int R600_D1GRPH_SWAP_ENDIAN_16BIT ; 
 int R600_D1GRPH_SWAP_ENDIAN_32BIT ; 
 int R600_D1GRPH_SWAP_ENDIAN_NONE ; 
 scalar_t__ R700_D1GRPH_PRIMARY_SURFACE_ADDRESS_HIGH ; 
 scalar_t__ R700_D1GRPH_SECONDARY_SURFACE_ADDRESS_HIGH ; 
 scalar_t__ R700_D2GRPH_PRIMARY_SURFACE_ADDRESS_HIGH ; 
 scalar_t__ R700_D2GRPH_SECONDARY_SURFACE_ADDRESS_HIGH ; 
 int /*<<< orphan*/  RADEON_GEM_DOMAIN_VRAM ; 
 int RADEON_TILING_MACRO ; 
 int RADEON_TILING_MICRO ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,struct drm_format_name_buf*) ; 
 struct radeon_bo* FUNC7 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_bo*,int*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct radeon_bo*) ; 
 int FUNC11 (struct radeon_bo*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC12 (struct radeon_bo*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct radeon_bo*) ; 
 int /*<<< orphan*/  FUNC14 (struct radeon_bo*) ; 
 struct radeon_crtc* FUNC15 (struct drm_crtc*) ; 
 scalar_t__ FUNC16 (int) ; 
 int FUNC17 (scalar_t__) ; 

__attribute__((used)) static int FUNC18(struct drm_crtc *crtc,
				  struct drm_framebuffer *fb,
				  int x, int y, int atomic)
{
	struct radeon_crtc *radeon_crtc = FUNC15(crtc);
	struct drm_device *dev = crtc->dev;
	struct radeon_device *rdev = dev->dev_private;
	struct drm_gem_object *obj;
	struct radeon_bo *rbo;
	struct drm_framebuffer *target_fb;
	uint64_t fb_location;
	uint32_t fb_format, fb_pitch_pixels, tiling_flags;
	u32 fb_swap = R600_D1GRPH_SWAP_ENDIAN_NONE;
	u32 viewport_w, viewport_h;
	int r;
	bool bypass_lut = false;
	struct drm_format_name_buf format_name;

	/* no fb bound */
	if (!atomic && !crtc->primary->fb) {
		FUNC0("No FB bound\n");
		return 0;
	}

	if (atomic)
		target_fb = fb;
	else
		target_fb = crtc->primary->fb;

	obj = target_fb->obj[0];
	rbo = FUNC7(obj);
	r = FUNC12(rbo, false);
	if (FUNC16(r != 0))
		return r;

	/* If atomic, assume fb object is pinned & idle & fenced and
	 * just update base pointers
	 */
	if (atomic)
		fb_location = FUNC10(rbo);
	else {
		r = FUNC11(rbo, RADEON_GEM_DOMAIN_VRAM, &fb_location);
		if (FUNC16(r != 0)) {
			FUNC14(rbo);
			return -EINVAL;
		}
	}
	FUNC9(rbo, &tiling_flags, NULL);
	FUNC14(rbo);

	switch (target_fb->format->format) {
	case DRM_FORMAT_C8:
		fb_format =
		    AVIVO_D1GRPH_CONTROL_DEPTH_8BPP |
		    AVIVO_D1GRPH_CONTROL_8BPP_INDEXED;
		break;
	case DRM_FORMAT_XRGB4444:
	case DRM_FORMAT_ARGB4444:
		fb_format =
		    AVIVO_D1GRPH_CONTROL_DEPTH_16BPP |
		    AVIVO_D1GRPH_CONTROL_16BPP_ARGB4444;
#ifdef __BIG_ENDIAN
		fb_swap = R600_D1GRPH_SWAP_ENDIAN_16BIT;
#endif
		break;
	case DRM_FORMAT_XRGB1555:
		fb_format =
		    AVIVO_D1GRPH_CONTROL_DEPTH_16BPP |
		    AVIVO_D1GRPH_CONTROL_16BPP_ARGB1555;
#ifdef __BIG_ENDIAN
		fb_swap = R600_D1GRPH_SWAP_ENDIAN_16BIT;
#endif
		break;
	case DRM_FORMAT_RGB565:
		fb_format =
		    AVIVO_D1GRPH_CONTROL_DEPTH_16BPP |
		    AVIVO_D1GRPH_CONTROL_16BPP_RGB565;
#ifdef __BIG_ENDIAN
		fb_swap = R600_D1GRPH_SWAP_ENDIAN_16BIT;
#endif
		break;
	case DRM_FORMAT_XRGB8888:
	case DRM_FORMAT_ARGB8888:
		fb_format =
		    AVIVO_D1GRPH_CONTROL_DEPTH_32BPP |
		    AVIVO_D1GRPH_CONTROL_32BPP_ARGB8888;
#ifdef __BIG_ENDIAN
		fb_swap = R600_D1GRPH_SWAP_ENDIAN_32BIT;
#endif
		break;
	case DRM_FORMAT_XRGB2101010:
	case DRM_FORMAT_ARGB2101010:
		fb_format =
		    AVIVO_D1GRPH_CONTROL_DEPTH_32BPP |
		    AVIVO_D1GRPH_CONTROL_32BPP_ARGB2101010;
#ifdef __BIG_ENDIAN
		fb_swap = R600_D1GRPH_SWAP_ENDIAN_32BIT;
#endif
		/* Greater 8 bpc fb needs to bypass hw-lut to retain precision */
		bypass_lut = true;
		break;
	case DRM_FORMAT_XBGR8888:
	case DRM_FORMAT_ABGR8888:
		fb_format =
		    AVIVO_D1GRPH_CONTROL_DEPTH_32BPP |
		    AVIVO_D1GRPH_CONTROL_32BPP_ARGB8888;
		if (rdev->family >= CHIP_R600)
			fb_swap =
			    (FUNC3(R600_D1GRPH_RED_SEL_B) |
			     FUNC2(R600_D1GRPH_BLUE_SEL_R));
		else /* DCE1 (R5xx) */
			fb_format |= AVIVO_D1GRPH_SWAP_RB;
#ifdef __BIG_ENDIAN
		fb_swap |= R600_D1GRPH_SWAP_ENDIAN_32BIT;
#endif
		break;
	default:
		FUNC1("Unsupported screen format %s\n",
		          FUNC6(target_fb->format->format, &format_name));
		return -EINVAL;
	}

	if (rdev->family >= CHIP_R600) {
		if (tiling_flags & RADEON_TILING_MACRO)
			fb_format |= R600_D1GRPH_ARRAY_MODE_2D_TILED_THIN1;
		else if (tiling_flags & RADEON_TILING_MICRO)
			fb_format |= R600_D1GRPH_ARRAY_MODE_1D_TILED_THIN1;
	} else {
		if (tiling_flags & RADEON_TILING_MACRO)
			fb_format |= AVIVO_D1GRPH_MACRO_ADDRESS_MODE;

		if (tiling_flags & RADEON_TILING_MICRO)
			fb_format |= AVIVO_D1GRPH_TILED;
	}

	if (radeon_crtc->crtc_id == 0)
		FUNC4(AVIVO_D1VGA_CONTROL, 0);
	else
		FUNC4(AVIVO_D2VGA_CONTROL, 0);

	/* Make sure surface address is update at vertical blank rather than
	 * horizontal blank
	 */
	FUNC4(AVIVO_D1GRPH_FLIP_CONTROL + radeon_crtc->crtc_offset, 0);

	if (rdev->family >= CHIP_RV770) {
		if (radeon_crtc->crtc_id) {
			FUNC4(R700_D2GRPH_PRIMARY_SURFACE_ADDRESS_HIGH, FUNC17(fb_location));
			FUNC4(R700_D2GRPH_SECONDARY_SURFACE_ADDRESS_HIGH, FUNC17(fb_location));
		} else {
			FUNC4(R700_D1GRPH_PRIMARY_SURFACE_ADDRESS_HIGH, FUNC17(fb_location));
			FUNC4(R700_D1GRPH_SECONDARY_SURFACE_ADDRESS_HIGH, FUNC17(fb_location));
		}
	}
	FUNC4(AVIVO_D1GRPH_PRIMARY_SURFACE_ADDRESS + radeon_crtc->crtc_offset,
	       (u32) fb_location);
	FUNC4(AVIVO_D1GRPH_SECONDARY_SURFACE_ADDRESS +
	       radeon_crtc->crtc_offset, (u32) fb_location);
	FUNC4(AVIVO_D1GRPH_CONTROL + radeon_crtc->crtc_offset, fb_format);
	if (rdev->family >= CHIP_R600)
		FUNC4(R600_D1GRPH_SWAP_CONTROL + radeon_crtc->crtc_offset, fb_swap);

	/* LUT only has 256 slots for 8 bpc fb. Bypass for > 8 bpc scanout for precision */
	FUNC5(AVIVO_D1GRPH_LUT_SEL + radeon_crtc->crtc_offset,
		 (bypass_lut ? AVIVO_LUT_10BIT_BYPASS_EN : 0), ~AVIVO_LUT_10BIT_BYPASS_EN);

	if (bypass_lut)
		FUNC0("Bypassing hardware LUT due to 10 bit fb scanout.\n");

	FUNC4(AVIVO_D1GRPH_SURFACE_OFFSET_X + radeon_crtc->crtc_offset, 0);
	FUNC4(AVIVO_D1GRPH_SURFACE_OFFSET_Y + radeon_crtc->crtc_offset, 0);
	FUNC4(AVIVO_D1GRPH_X_START + radeon_crtc->crtc_offset, 0);
	FUNC4(AVIVO_D1GRPH_Y_START + radeon_crtc->crtc_offset, 0);
	FUNC4(AVIVO_D1GRPH_X_END + radeon_crtc->crtc_offset, target_fb->width);
	FUNC4(AVIVO_D1GRPH_Y_END + radeon_crtc->crtc_offset, target_fb->height);

	fb_pitch_pixels = target_fb->pitches[0] / target_fb->format->cpp[0];
	FUNC4(AVIVO_D1GRPH_PITCH + radeon_crtc->crtc_offset, fb_pitch_pixels);
	FUNC4(AVIVO_D1GRPH_ENABLE + radeon_crtc->crtc_offset, 1);

	FUNC4(AVIVO_D1MODE_DESKTOP_HEIGHT + radeon_crtc->crtc_offset,
	       target_fb->height);
	x &= ~3;
	y &= ~1;
	FUNC4(AVIVO_D1MODE_VIEWPORT_START + radeon_crtc->crtc_offset,
	       (x << 16) | y);
	viewport_w = crtc->mode.hdisplay;
	viewport_h = (crtc->mode.vdisplay + 1) & ~1;
	FUNC4(AVIVO_D1MODE_VIEWPORT_SIZE + radeon_crtc->crtc_offset,
	       (viewport_w << 16) | viewport_h);

	/* set pageflip to happen only at start of vblank interval (front porch) */
	FUNC4(AVIVO_D1MODE_MASTER_UPDATE_MODE + radeon_crtc->crtc_offset, 3);

	if (!atomic && fb && fb != crtc->primary->fb) {
		rbo = FUNC7(fb->obj[0]);
		r = FUNC12(rbo, false);
		if (FUNC16(r != 0))
			return r;
		FUNC13(rbo);
		FUNC14(rbo);
	}

	/* Bytes per pixel may have changed */
	FUNC8(rdev);

	return 0;
}