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
typedef  int /*<<< orphan*/  u16 ;
struct radeon_device {int dummy; } ;
struct radeon_crtc {scalar_t__ crtc_offset; int /*<<< orphan*/  output_csc; int /*<<< orphan*/  crtc_id; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_crtc {int gamma_size; int /*<<< orphan*/ * gamma_store; struct drm_device* dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 scalar_t__ CIK_ALPHA_CONTROL ; 
 int CIK_CURSOR_ALPHA_BLND_ENA ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ EVERGREEN_DC_LUT_30_COLOR ; 
 scalar_t__ EVERGREEN_DC_LUT_BLACK_OFFSET_BLUE ; 
 scalar_t__ EVERGREEN_DC_LUT_BLACK_OFFSET_GREEN ; 
 scalar_t__ EVERGREEN_DC_LUT_BLACK_OFFSET_RED ; 
 scalar_t__ EVERGREEN_DC_LUT_CONTROL ; 
 scalar_t__ EVERGREEN_DC_LUT_RW_INDEX ; 
 scalar_t__ EVERGREEN_DC_LUT_RW_MODE ; 
 scalar_t__ EVERGREEN_DC_LUT_WHITE_OFFSET_BLUE ; 
 scalar_t__ EVERGREEN_DC_LUT_WHITE_OFFSET_GREEN ; 
 scalar_t__ EVERGREEN_DC_LUT_WHITE_OFFSET_RED ; 
 scalar_t__ EVERGREEN_DC_LUT_WRITE_EN_MASK ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NI_DEGAMMA_BYPASS ; 
 scalar_t__ NI_DEGAMMA_CONTROL ; 
 int /*<<< orphan*/  NI_GAMUT_REMAP_BYPASS ; 
 scalar_t__ NI_GAMUT_REMAP_CONTROL ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int NI_GRPH_PRESCALE_BYPASS ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NI_INPUT_CSC_BYPASS ; 
 scalar_t__ NI_INPUT_CSC_CONTROL ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ NI_INPUT_GAMMA_CONTROL ; 
 int /*<<< orphan*/  NI_INPUT_GAMMA_USE_LUT ; 
 int /*<<< orphan*/  NI_OUTPUT_CSC_BYPASS ; 
 scalar_t__ NI_OUTPUT_CSC_CONTROL ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int NI_OVL_PRESCALE_BYPASS ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ NI_PRESCALE_GRPH_CONTROL ; 
 scalar_t__ NI_PRESCALE_OVL_CONTROL ; 
 int /*<<< orphan*/  NI_REGAMMA_BYPASS ; 
 scalar_t__ NI_REGAMMA_CONTROL ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,int) ; 
 struct radeon_crtc* FUNC17 (struct drm_crtc*) ; 

__attribute__((used)) static void FUNC18(struct drm_crtc *crtc)
{
	struct radeon_crtc *radeon_crtc = FUNC17(crtc);
	struct drm_device *dev = crtc->dev;
	struct radeon_device *rdev = dev->dev_private;
	u16 *r, *g, *b;
	int i;

	FUNC1("%d\n", radeon_crtc->crtc_id);

	FUNC16(NI_INPUT_CSC_CONTROL + radeon_crtc->crtc_offset,
	       (FUNC8(NI_INPUT_CSC_BYPASS) |
		FUNC9(NI_INPUT_CSC_BYPASS)));
	FUNC16(NI_PRESCALE_GRPH_CONTROL + radeon_crtc->crtc_offset,
	       NI_GRPH_PRESCALE_BYPASS);
	FUNC16(NI_PRESCALE_OVL_CONTROL + radeon_crtc->crtc_offset,
	       NI_OVL_PRESCALE_BYPASS);
	FUNC16(NI_INPUT_GAMMA_CONTROL + radeon_crtc->crtc_offset,
	       (FUNC5(NI_INPUT_GAMMA_USE_LUT) |
		FUNC14(NI_INPUT_GAMMA_USE_LUT)));

	FUNC16(EVERGREEN_DC_LUT_CONTROL + radeon_crtc->crtc_offset, 0);

	FUNC16(EVERGREEN_DC_LUT_BLACK_OFFSET_BLUE + radeon_crtc->crtc_offset, 0);
	FUNC16(EVERGREEN_DC_LUT_BLACK_OFFSET_GREEN + radeon_crtc->crtc_offset, 0);
	FUNC16(EVERGREEN_DC_LUT_BLACK_OFFSET_RED + radeon_crtc->crtc_offset, 0);

	FUNC16(EVERGREEN_DC_LUT_WHITE_OFFSET_BLUE + radeon_crtc->crtc_offset, 0xffff);
	FUNC16(EVERGREEN_DC_LUT_WHITE_OFFSET_GREEN + radeon_crtc->crtc_offset, 0xffff);
	FUNC16(EVERGREEN_DC_LUT_WHITE_OFFSET_RED + radeon_crtc->crtc_offset, 0xffff);

	FUNC16(EVERGREEN_DC_LUT_RW_MODE + radeon_crtc->crtc_offset, 0);
	FUNC16(EVERGREEN_DC_LUT_WRITE_EN_MASK + radeon_crtc->crtc_offset, 0x00000007);

	FUNC16(EVERGREEN_DC_LUT_RW_INDEX + radeon_crtc->crtc_offset, 0);
	r = crtc->gamma_store;
	g = r + crtc->gamma_size;
	b = g + crtc->gamma_size;
	for (i = 0; i < 256; i++) {
		FUNC16(EVERGREEN_DC_LUT_30_COLOR + radeon_crtc->crtc_offset,
		       ((*r++ & 0xffc0) << 14) |
		       ((*g++ & 0xffc0) << 4) |
		       (*b++ >> 6));
	}

	FUNC16(NI_DEGAMMA_CONTROL + radeon_crtc->crtc_offset,
	       (FUNC3(NI_DEGAMMA_BYPASS) |
		FUNC12(NI_DEGAMMA_BYPASS) |
		FUNC7(NI_DEGAMMA_BYPASS) |
		FUNC2(NI_DEGAMMA_BYPASS)));
	FUNC16(NI_GAMUT_REMAP_CONTROL + radeon_crtc->crtc_offset,
	       (FUNC4(NI_GAMUT_REMAP_BYPASS) |
		FUNC13(NI_GAMUT_REMAP_BYPASS)));
	FUNC16(NI_REGAMMA_CONTROL + radeon_crtc->crtc_offset,
	       (FUNC6(NI_REGAMMA_BYPASS) |
		FUNC15(NI_REGAMMA_BYPASS)));
	FUNC16(NI_OUTPUT_CSC_CONTROL + radeon_crtc->crtc_offset,
	       (FUNC10(radeon_crtc->output_csc) |
		FUNC11(NI_OUTPUT_CSC_BYPASS)));
	/* XXX match this to the depth of the crtc fmt block, move to modeset? */
	FUNC16(0x6940 + radeon_crtc->crtc_offset, 0);
	if (FUNC0(rdev)) {
		/* XXX this only needs to be programmed once per crtc at startup,
		 * not sure where the best place for it is
		 */
		FUNC16(CIK_ALPHA_CONTROL + radeon_crtc->crtc_offset,
		       CIK_CURSOR_ALPHA_BLND_ENA);
	}
}