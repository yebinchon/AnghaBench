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
typedef  int uint32_t ;
struct radeon_encoder_lvds {int lvds_gen_cntl; int panel_digon_delay; int panel_blon_delay; } ;
struct radeon_encoder {scalar_t__ rmx_type; scalar_t__ enc_priv; int /*<<< orphan*/  pixel_clock; } ;
struct radeon_device {scalar_t__ family; scalar_t__ is_atom_bios; } ;
struct radeon_crtc {scalar_t__ crtc_id; } ;
struct drm_encoder {int /*<<< orphan*/  crtc; struct drm_device* dev; } ;
struct drm_display_mode {int /*<<< orphan*/  clock; } ;
struct drm_device {struct radeon_device* dev_private; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 scalar_t__ CHIP_RV410 ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  PANEL_ENCODER_ACTION_ENABLE ; 
 int R300_LVDS_SRC_SEL_CRTC2 ; 
 int R300_LVDS_SRC_SEL_MASK ; 
 int R300_LVDS_SRC_SEL_RMX ; 
 int /*<<< orphan*/  RADEON_CLOCK_CNTL_INDEX ; 
 int RADEON_LVDS_BLON ; 
 int RADEON_LVDS_DISPLAY_DIS ; 
 int RADEON_LVDS_EN ; 
 int /*<<< orphan*/  RADEON_LVDS_GEN_CNTL ; 
 int RADEON_LVDS_ON ; 
 int /*<<< orphan*/  RADEON_LVDS_PLL_CNTL ; 
 int RADEON_LVDS_PLL_EN ; 
 int RADEON_LVDS_PWRSEQ_DELAY1_SHIFT ; 
 int RADEON_LVDS_PWRSEQ_DELAY2_SHIFT ; 
 int RADEON_LVDS_RST_FM ; 
 int RADEON_LVDS_SEL_CRTC2 ; 
 int /*<<< orphan*/  RADEON_LVDS_SS_GEN_CNTL ; 
 scalar_t__ RMX_OFF ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_encoder*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_encoder*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_encoder*,scalar_t__) ; 
 struct radeon_crtc* FUNC7 (int /*<<< orphan*/ ) ; 
 struct radeon_encoder* FUNC8 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC9(struct drm_encoder *encoder,
					struct drm_display_mode *mode,
					struct drm_display_mode *adjusted_mode)
{
	struct drm_device *dev = encoder->dev;
	struct radeon_device *rdev = dev->dev_private;
	struct radeon_crtc *radeon_crtc = FUNC7(encoder->crtc);
	struct radeon_encoder *radeon_encoder = FUNC8(encoder);
	uint32_t lvds_pll_cntl, lvds_gen_cntl, lvds_ss_gen_cntl;

	FUNC1("\n");

	lvds_pll_cntl = FUNC2(RADEON_LVDS_PLL_CNTL);
	lvds_pll_cntl &= ~RADEON_LVDS_PLL_EN;

	lvds_ss_gen_cntl = FUNC2(RADEON_LVDS_SS_GEN_CNTL);
	if (rdev->is_atom_bios) {
		/* LVDS_GEN_CNTL parameters are computed in LVDSEncoderControl
		 * need to call that on resume to set up the reg properly.
		 */
		radeon_encoder->pixel_clock = adjusted_mode->clock;
		FUNC4(encoder, PANEL_ENCODER_ACTION_ENABLE);
		lvds_gen_cntl = FUNC2(RADEON_LVDS_GEN_CNTL);
	} else {
		struct radeon_encoder_lvds *lvds = (struct radeon_encoder_lvds *)radeon_encoder->enc_priv;
		if (lvds) {
			FUNC1("bios LVDS_GEN_CNTL: 0x%x\n", lvds->lvds_gen_cntl);
			lvds_gen_cntl = lvds->lvds_gen_cntl;
			lvds_ss_gen_cntl &= ~((0xf << RADEON_LVDS_PWRSEQ_DELAY1_SHIFT) |
					      (0xf << RADEON_LVDS_PWRSEQ_DELAY2_SHIFT));
			lvds_ss_gen_cntl |= ((lvds->panel_digon_delay << RADEON_LVDS_PWRSEQ_DELAY1_SHIFT) |
					     (lvds->panel_blon_delay << RADEON_LVDS_PWRSEQ_DELAY2_SHIFT));
		} else
			lvds_gen_cntl = FUNC2(RADEON_LVDS_GEN_CNTL);
	}
	lvds_gen_cntl |= RADEON_LVDS_DISPLAY_DIS;
	lvds_gen_cntl &= ~(RADEON_LVDS_ON |
			   RADEON_LVDS_BLON |
			   RADEON_LVDS_EN |
			   RADEON_LVDS_RST_FM);

	if (FUNC0(rdev))
		lvds_pll_cntl &= ~(R300_LVDS_SRC_SEL_MASK);

	if (radeon_crtc->crtc_id == 0) {
		if (FUNC0(rdev)) {
			if (radeon_encoder->rmx_type != RMX_OFF)
				lvds_pll_cntl |= R300_LVDS_SRC_SEL_RMX;
		} else
			lvds_gen_cntl &= ~RADEON_LVDS_SEL_CRTC2;
	} else {
		if (FUNC0(rdev))
			lvds_pll_cntl |= R300_LVDS_SRC_SEL_CRTC2;
		else
			lvds_gen_cntl |= RADEON_LVDS_SEL_CRTC2;
	}

	FUNC3(RADEON_LVDS_GEN_CNTL, lvds_gen_cntl);
	FUNC3(RADEON_LVDS_PLL_CNTL, lvds_pll_cntl);
	FUNC3(RADEON_LVDS_SS_GEN_CNTL, lvds_ss_gen_cntl);

	if (rdev->family == CHIP_RV410)
		FUNC3(RADEON_CLOCK_CNTL_INDEX, 0);

	if (rdev->is_atom_bios)
		FUNC5(encoder, radeon_crtc->crtc_id);
	else
		FUNC6(encoder, radeon_crtc->crtc_id);
}