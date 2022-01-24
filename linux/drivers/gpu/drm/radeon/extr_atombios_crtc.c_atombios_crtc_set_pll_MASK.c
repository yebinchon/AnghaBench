#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct radeon_pll {int reference_freq; int /*<<< orphan*/  post_div; int /*<<< orphan*/  reference_div; int /*<<< orphan*/  flags; } ;
struct radeon_encoder {int active_device; int /*<<< orphan*/  encoder_id; } ;
struct TYPE_4__ {struct radeon_pll dcpll; struct radeon_pll p2pll; struct radeon_pll p1pll; } ;
struct radeon_device {TYPE_1__ clock; } ;
struct TYPE_5__ {int amount; int type; int step; scalar_t__ rate; scalar_t__ percentage_divider; scalar_t__ percentage; } ;
struct radeon_crtc {int bpc; int adjusted_clock; int pll_id; TYPE_2__ ss; int /*<<< orphan*/  crtc_id; scalar_t__ ss_enabled; int /*<<< orphan*/  pll_post_div; int /*<<< orphan*/  pll_reference_div; int /*<<< orphan*/  pll_flags; int /*<<< orphan*/  encoder; } ;
struct drm_display_mode {int clock; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 scalar_t__ FUNC1 (struct radeon_device*) ; 
 scalar_t__ FUNC2 (struct radeon_device*) ; 
#define  ATOM_DCPLL 131 
 int ATOM_DEVICE_TV_SUPPORT ; 
 int /*<<< orphan*/  ATOM_DISABLE ; 
 int /*<<< orphan*/  ATOM_ENABLE ; 
 int ATOM_ENCODER_MODE_HDMI ; 
#define  ATOM_PPLL1 130 
#define  ATOM_PPLL2 129 
#define  ATOM_PPLL_INVALID 128 
 int ATOM_PPLL_SS_AMOUNT_V2_FBDIV_MASK ; 
 int ATOM_PPLL_SS_AMOUNT_V2_NFRAC_MASK ; 
 int ATOM_PPLL_SS_AMOUNT_V2_NFRAC_SHIFT ; 
 int ATOM_PPLL_SS_TYPE_V2_CENTRE_SPREAD ; 
 int /*<<< orphan*/  FUNC3 (struct drm_crtc*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int,int,int,int,int,int,scalar_t__,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_pll*,int,int*,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_pll*,int,int*,int*,int*,int*,int*) ; 
 struct radeon_crtc* FUNC8 (struct drm_crtc*) ; 
 struct radeon_encoder* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct drm_crtc *crtc, struct drm_display_mode *mode)
{
	struct radeon_crtc *radeon_crtc = FUNC8(crtc);
	struct drm_device *dev = crtc->dev;
	struct radeon_device *rdev = dev->dev_private;
	struct radeon_encoder *radeon_encoder =
		FUNC9(radeon_crtc->encoder);
	u32 pll_clock = mode->clock;
	u32 clock = mode->clock;
	u32 ref_div = 0, fb_div = 0, frac_fb_div = 0, post_div = 0;
	struct radeon_pll *pll;
	int encoder_mode = FUNC5(radeon_crtc->encoder);

	/* pass the actual clock to atombios_crtc_program_pll for DCE5,6 for HDMI */
	if (FUNC2(rdev) &&
	    (encoder_mode == ATOM_ENCODER_MODE_HDMI) &&
	    (radeon_crtc->bpc > 8))
		clock = radeon_crtc->adjusted_clock;

	switch (radeon_crtc->pll_id) {
	case ATOM_PPLL1:
		pll = &rdev->clock.p1pll;
		break;
	case ATOM_PPLL2:
		pll = &rdev->clock.p2pll;
		break;
	case ATOM_DCPLL:
	case ATOM_PPLL_INVALID:
	default:
		pll = &rdev->clock.dcpll;
		break;
	}

	/* update pll params */
	pll->flags = radeon_crtc->pll_flags;
	pll->reference_div = radeon_crtc->pll_reference_div;
	pll->post_div = radeon_crtc->pll_post_div;

	if (radeon_encoder->active_device & (ATOM_DEVICE_TV_SUPPORT))
		/* TV seems to prefer the legacy algo on some boards */
		FUNC7(pll, radeon_crtc->adjusted_clock, &pll_clock,
					  &fb_div, &frac_fb_div, &ref_div, &post_div);
	else if (FUNC0(rdev))
		FUNC6(pll, radeon_crtc->adjusted_clock, &pll_clock,
					 &fb_div, &frac_fb_div, &ref_div, &post_div);
	else
		FUNC7(pll, radeon_crtc->adjusted_clock, &pll_clock,
					  &fb_div, &frac_fb_div, &ref_div, &post_div);

	FUNC4(rdev, ATOM_DISABLE, radeon_crtc->pll_id,
				 radeon_crtc->crtc_id, &radeon_crtc->ss);

	FUNC3(crtc, radeon_crtc->crtc_id, radeon_crtc->pll_id,
				  encoder_mode, radeon_encoder->encoder_id, clock,
				  ref_div, fb_div, frac_fb_div, post_div,
				  radeon_crtc->bpc, radeon_crtc->ss_enabled, &radeon_crtc->ss);

	if (radeon_crtc->ss_enabled) {
		/* calculate ss amount and step size */
		if (FUNC1(rdev)) {
			u32 step_size;
			u32 amount = (((fb_div * 10) + frac_fb_div) *
				      (u32)radeon_crtc->ss.percentage) /
				(100 * (u32)radeon_crtc->ss.percentage_divider);
			radeon_crtc->ss.amount = (amount / 10) & ATOM_PPLL_SS_AMOUNT_V2_FBDIV_MASK;
			radeon_crtc->ss.amount |= ((amount - (amount / 10)) << ATOM_PPLL_SS_AMOUNT_V2_NFRAC_SHIFT) &
				ATOM_PPLL_SS_AMOUNT_V2_NFRAC_MASK;
			if (radeon_crtc->ss.type & ATOM_PPLL_SS_TYPE_V2_CENTRE_SPREAD)
				step_size = (4 * amount * ref_div * ((u32)radeon_crtc->ss.rate * 2048)) /
					(125 * 25 * pll->reference_freq / 100);
			else
				step_size = (2 * amount * ref_div * ((u32)radeon_crtc->ss.rate * 2048)) /
					(125 * 25 * pll->reference_freq / 100);
			radeon_crtc->ss.step = step_size;
		}

		FUNC4(rdev, ATOM_ENABLE, radeon_crtc->pll_id,
					 radeon_crtc->crtc_id, &radeon_crtc->ss);
	}
}