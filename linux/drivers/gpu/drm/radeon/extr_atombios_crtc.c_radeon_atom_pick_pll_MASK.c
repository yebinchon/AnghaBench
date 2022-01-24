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
typedef  int u32 ;
struct radeon_encoder_atom_dig {int linkb; } ;
struct radeon_encoder {scalar_t__ encoder_id; struct radeon_encoder_atom_dig* enc_priv; } ;
struct TYPE_2__ {scalar_t__ dp_extclk; } ;
struct radeon_device {scalar_t__ family; TYPE_1__ clock; } ;
struct radeon_crtc {int crtc_id; int /*<<< orphan*/  encoder; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 scalar_t__ FUNC1 (struct radeon_device*) ; 
 scalar_t__ FUNC2 (struct radeon_device*) ; 
 scalar_t__ FUNC3 (struct radeon_device*) ; 
 scalar_t__ FUNC4 (struct radeon_device*) ; 
 scalar_t__ FUNC5 (struct radeon_device*) ; 
 int ATOM_DCPLL ; 
 int ATOM_PPLL0 ; 
 int ATOM_PPLL1 ; 
 int ATOM_PPLL2 ; 
 int ATOM_PPLL_INVALID ; 
 scalar_t__ CHIP_KABINI ; 
 scalar_t__ CHIP_MULLINS ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ ENCODER_OBJECT_ID_INTERNAL_UNIPHY ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct drm_crtc*) ; 
 int FUNC10 (struct drm_crtc*) ; 
 int FUNC11 (struct drm_crtc*) ; 
 struct radeon_crtc* FUNC12 (struct drm_crtc*) ; 
 struct radeon_encoder* FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct drm_crtc *crtc)
{
	struct radeon_crtc *radeon_crtc = FUNC12(crtc);
	struct drm_device *dev = crtc->dev;
	struct radeon_device *rdev = dev->dev_private;
	struct radeon_encoder *radeon_encoder =
		FUNC13(radeon_crtc->encoder);
	u32 pll_in_use;
	int pll;

	if (FUNC5(rdev)) {
		if (FUNC7(FUNC8(radeon_crtc->encoder))) {
			if (rdev->clock.dp_extclk)
				/* skip PPLL programming if using ext clock */
				return ATOM_PPLL_INVALID;
			else {
				/* use the same PPLL for all DP monitors */
				pll = FUNC10(crtc);
				if (pll != ATOM_PPLL_INVALID)
					return pll;
			}
		} else {
			/* use the same PPLL for all monitors with the same clock */
			pll = FUNC11(crtc);
			if (pll != ATOM_PPLL_INVALID)
				return pll;
		}
		/* otherwise, pick one of the plls */
		if ((rdev->family == CHIP_KABINI) ||
		    (rdev->family == CHIP_MULLINS)) {
			/* KB/ML has PPLL1 and PPLL2 */
			pll_in_use = FUNC9(crtc);
			if (!(pll_in_use & (1 << ATOM_PPLL2)))
				return ATOM_PPLL2;
			if (!(pll_in_use & (1 << ATOM_PPLL1)))
				return ATOM_PPLL1;
			FUNC6("unable to allocate a PPLL\n");
			return ATOM_PPLL_INVALID;
		} else {
			/* CI/KV has PPLL0, PPLL1, and PPLL2 */
			pll_in_use = FUNC9(crtc);
			if (!(pll_in_use & (1 << ATOM_PPLL2)))
				return ATOM_PPLL2;
			if (!(pll_in_use & (1 << ATOM_PPLL1)))
				return ATOM_PPLL1;
			if (!(pll_in_use & (1 << ATOM_PPLL0)))
				return ATOM_PPLL0;
			FUNC6("unable to allocate a PPLL\n");
			return ATOM_PPLL_INVALID;
		}
	} else if (FUNC4(rdev)) {
		struct radeon_encoder_atom_dig *dig =
			radeon_encoder->enc_priv;

		if ((radeon_encoder->encoder_id == ENCODER_OBJECT_ID_INTERNAL_UNIPHY) &&
		    (dig->linkb == false))
			/* UNIPHY A uses PPLL2 */
			return ATOM_PPLL2;
		else if (FUNC7(FUNC8(radeon_crtc->encoder))) {
			/* UNIPHY B/C/D/E/F */
			if (rdev->clock.dp_extclk)
				/* skip PPLL programming if using ext clock */
				return ATOM_PPLL_INVALID;
			else {
				/* use the same PPLL for all DP monitors */
				pll = FUNC10(crtc);
				if (pll != ATOM_PPLL_INVALID)
					return pll;
			}
		} else {
			/* use the same PPLL for all monitors with the same clock */
			pll = FUNC11(crtc);
			if (pll != ATOM_PPLL_INVALID)
				return pll;
		}
		/* UNIPHY B/C/D/E/F */
		pll_in_use = FUNC9(crtc);
		if (!(pll_in_use & (1 << ATOM_PPLL0)))
			return ATOM_PPLL0;
		if (!(pll_in_use & (1 << ATOM_PPLL1)))
			return ATOM_PPLL1;
		FUNC6("unable to allocate a PPLL\n");
		return ATOM_PPLL_INVALID;
	} else if (FUNC1(rdev)) {
		/* Don't share PLLs on DCE4.1 chips */
		if (FUNC7(FUNC8(radeon_crtc->encoder))) {
			if (rdev->clock.dp_extclk)
				/* skip PPLL programming if using ext clock */
				return ATOM_PPLL_INVALID;
		}
		pll_in_use = FUNC9(crtc);
		if (!(pll_in_use & (1 << ATOM_PPLL1)))
			return ATOM_PPLL1;
		if (!(pll_in_use & (1 << ATOM_PPLL2)))
			return ATOM_PPLL2;
		FUNC6("unable to allocate a PPLL\n");
		return ATOM_PPLL_INVALID;
	} else if (FUNC0(rdev)) {
		/* in DP mode, the DP ref clock can come from PPLL, DCPLL, or ext clock,
		 * depending on the asic:
		 * DCE4: PPLL or ext clock
		 * DCE5: PPLL, DCPLL, or ext clock
		 * DCE6: PPLL, PPLL0, or ext clock
		 *
		 * Setting ATOM_PPLL_INVALID will cause SetPixelClock to skip
		 * PPLL/DCPLL programming and only program the DP DTO for the
		 * crtc virtual pixel clock.
		 */
		if (FUNC7(FUNC8(radeon_crtc->encoder))) {
			if (rdev->clock.dp_extclk)
				/* skip PPLL programming if using ext clock */
				return ATOM_PPLL_INVALID;
			else if (FUNC3(rdev))
				/* use PPLL0 for all DP */
				return ATOM_PPLL0;
			else if (FUNC2(rdev))
				/* use DCPLL for all DP */
				return ATOM_DCPLL;
			else {
				/* use the same PPLL for all DP monitors */
				pll = FUNC10(crtc);
				if (pll != ATOM_PPLL_INVALID)
					return pll;
			}
		} else {
			/* use the same PPLL for all monitors with the same clock */
			pll = FUNC11(crtc);
			if (pll != ATOM_PPLL_INVALID)
				return pll;
		}
		/* all other cases */
		pll_in_use = FUNC9(crtc);
		if (!(pll_in_use & (1 << ATOM_PPLL1)))
			return ATOM_PPLL1;
		if (!(pll_in_use & (1 << ATOM_PPLL2)))
			return ATOM_PPLL2;
		FUNC6("unable to allocate a PPLL\n");
		return ATOM_PPLL_INVALID;
	} else {
		/* on pre-R5xx asics, the crtc to pll mapping is hardcoded */
		/* some atombios (observed in some DCE2/DCE3) code have a bug,
		 * the matching btw pll and crtc is done through
		 * PCLK_CRTC[1|2]_CNTL (0x480/0x484) but atombios code use the
		 * pll (1 or 2) to select which register to write. ie if using
		 * pll1 it will use PCLK_CRTC1_CNTL (0x480) and if using pll2
		 * it will use PCLK_CRTC2_CNTL (0x484), it then use crtc id to
		 * choose which value to write. Which is reverse order from
		 * register logic. So only case that works is when pllid is
		 * same as crtcid or when both pll and crtc are enabled and
		 * both use same clock.
		 *
		 * So just return crtc id as if crtc and pll were hard linked
		 * together even if they aren't
		 */
		return radeon_crtc->crtc_id;
	}
}