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
typedef  int uint32_t ;
struct radeon_encoder {scalar_t__ rmx_type; int /*<<< orphan*/  pixel_clock; } ;
struct radeon_device {scalar_t__ family; scalar_t__ is_atom_bios; } ;
struct radeon_crtc {scalar_t__ crtc_id; } ;
struct drm_encoder {int /*<<< orphan*/  crtc; struct drm_device* dev; } ;
struct drm_display_mode {int /*<<< orphan*/  clock; } ;
struct drm_device {TYPE_1__* pdev; struct radeon_device* dev_private; } ;
struct TYPE_2__ {int device; int subsystem_vendor; int subsystem_device; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 int /*<<< orphan*/  ATOM_ENABLE ; 
 scalar_t__ CHIP_R200 ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int R200_FP2_SOURCE_SEL_CRTC1 ; 
 int R200_FP2_SOURCE_SEL_CRTC2 ; 
 int R200_FP2_SOURCE_SEL_MASK ; 
 int R200_FP2_SOURCE_SEL_RMX ; 
 int R300_FP2_DVO_CLOCK_MODE_SINGLE ; 
 int RADEON_FP2_DVO_EN ; 
 int RADEON_FP2_DVO_RATE_SEL_SDR ; 
 int /*<<< orphan*/  RADEON_FP2_GEN_CNTL ; 
 int RADEON_FP2_ON ; 
 int RADEON_FP2_PAD_FLOP_EN ; 
 int RADEON_FP2_PANEL_FORMAT ; 
 int RADEON_FP2_SRC_SEL_CRTC2 ; 
 scalar_t__ RMX_OFF ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_encoder*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_encoder*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_encoder*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_encoder*) ; 
 struct radeon_crtc* FUNC9 (int /*<<< orphan*/ ) ; 
 struct radeon_encoder* FUNC10 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC11(struct drm_encoder *encoder,
					    struct drm_display_mode *mode,
					    struct drm_display_mode *adjusted_mode)
{
	struct drm_device *dev = encoder->dev;
	struct radeon_device *rdev = dev->dev_private;
	struct radeon_crtc *radeon_crtc = FUNC9(encoder->crtc);
	struct radeon_encoder *radeon_encoder = FUNC10(encoder);
	uint32_t fp2_gen_cntl;

	FUNC1("\n");

	if (rdev->is_atom_bios) {
		radeon_encoder->pixel_clock = adjusted_mode->clock;
		FUNC4(encoder, ATOM_ENABLE);
		fp2_gen_cntl = FUNC2(RADEON_FP2_GEN_CNTL);
	} else {
		fp2_gen_cntl = FUNC2(RADEON_FP2_GEN_CNTL);

		if (1) /*  FIXME rgbBits == 8 */
			fp2_gen_cntl |= RADEON_FP2_PANEL_FORMAT; /* 24 bit format, */
		else
			fp2_gen_cntl &= ~RADEON_FP2_PANEL_FORMAT;/* 18 bit format, */

		fp2_gen_cntl &= ~(RADEON_FP2_ON |
				  RADEON_FP2_DVO_EN |
				  RADEON_FP2_DVO_RATE_SEL_SDR);

		/* XXX: these are oem specific */
		if (FUNC0(rdev)) {
			if ((dev->pdev->device == 0x4850) &&
			    (dev->pdev->subsystem_vendor == 0x1028) &&
			    (dev->pdev->subsystem_device == 0x2001)) /* Dell Inspiron 8600 */
				fp2_gen_cntl |= R300_FP2_DVO_CLOCK_MODE_SINGLE;
			else
				fp2_gen_cntl |= RADEON_FP2_PAD_FLOP_EN | R300_FP2_DVO_CLOCK_MODE_SINGLE;

			/*if (mode->clock > 165000)
			  fp2_gen_cntl |= R300_FP2_DVO_DUAL_CHANNEL_EN;*/
		}
		if (!FUNC7(encoder))
			FUNC8(encoder);
	}

	if (radeon_crtc->crtc_id == 0) {
		if ((rdev->family == CHIP_R200) || FUNC0(rdev)) {
			fp2_gen_cntl &= ~R200_FP2_SOURCE_SEL_MASK;
			if (radeon_encoder->rmx_type != RMX_OFF)
				fp2_gen_cntl |= R200_FP2_SOURCE_SEL_RMX;
			else
				fp2_gen_cntl |= R200_FP2_SOURCE_SEL_CRTC1;
		} else
			fp2_gen_cntl &= ~RADEON_FP2_SRC_SEL_CRTC2;
	} else {
		if ((rdev->family == CHIP_R200) || FUNC0(rdev)) {
			fp2_gen_cntl &= ~R200_FP2_SOURCE_SEL_MASK;
			fp2_gen_cntl |= R200_FP2_SOURCE_SEL_CRTC2;
		} else
			fp2_gen_cntl |= RADEON_FP2_SRC_SEL_CRTC2;
	}

	FUNC3(RADEON_FP2_GEN_CNTL, fp2_gen_cntl);

	if (rdev->is_atom_bios)
		FUNC5(encoder, radeon_crtc->crtc_id);
	else
		FUNC6(encoder, radeon_crtc->crtc_id);
}