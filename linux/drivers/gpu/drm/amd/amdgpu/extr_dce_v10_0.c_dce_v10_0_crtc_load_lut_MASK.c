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
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct drm_crtc {int gamma_size; int /*<<< orphan*/ * gamma_store; struct drm_device* dev; } ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_crtc {scalar_t__ crtc_offset; int /*<<< orphan*/  crtc_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALPHA_CONTROL ; 
 int /*<<< orphan*/  CURSOR_ALPHA_BLND_ENA ; 
 int /*<<< orphan*/  CURSOR_DEGAMMA_MODE ; 
 int /*<<< orphan*/  DEGAMMA_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GAMUT_REMAP_CONTROL ; 
 int /*<<< orphan*/  GRPH_DEGAMMA_MODE ; 
 int /*<<< orphan*/  GRPH_GAMUT_REMAP_MODE ; 
 int /*<<< orphan*/  GRPH_INPUT_GAMMA_MODE ; 
 int /*<<< orphan*/  GRPH_PRESCALE_BYPASS ; 
 int /*<<< orphan*/  GRPH_REGAMMA_MODE ; 
 int /*<<< orphan*/  INPUT_CSC_CONTROL ; 
 int /*<<< orphan*/  INPUT_CSC_GRPH_MODE ; 
 int /*<<< orphan*/  INPUT_CSC_OVL_MODE ; 
 int /*<<< orphan*/  INPUT_GAMMA_CONTROL ; 
 int /*<<< orphan*/  OUTPUT_CSC_CONTROL ; 
 int /*<<< orphan*/  OUTPUT_CSC_GRPH_MODE ; 
 int /*<<< orphan*/  OUTPUT_CSC_OVL_MODE ; 
 int /*<<< orphan*/  OVL_DEGAMMA_MODE ; 
 int /*<<< orphan*/  OVL_GAMUT_REMAP_MODE ; 
 int /*<<< orphan*/  OVL_INPUT_GAMMA_MODE ; 
 int /*<<< orphan*/  OVL_PRESCALE_BYPASS ; 
 int /*<<< orphan*/  OVL_REGAMMA_MODE ; 
 int /*<<< orphan*/  PRESCALE_GRPH_CONTROL ; 
 int /*<<< orphan*/  PRESCALE_OVL_CONTROL ; 
 int /*<<< orphan*/  REGAMMA_CONTROL ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 scalar_t__ mmALPHA_CONTROL ; 
 scalar_t__ mmDC_LUT_30_COLOR ; 
 scalar_t__ mmDC_LUT_BLACK_OFFSET_BLUE ; 
 scalar_t__ mmDC_LUT_BLACK_OFFSET_GREEN ; 
 scalar_t__ mmDC_LUT_BLACK_OFFSET_RED ; 
 scalar_t__ mmDC_LUT_CONTROL ; 
 scalar_t__ mmDC_LUT_RW_INDEX ; 
 scalar_t__ mmDC_LUT_RW_MODE ; 
 scalar_t__ mmDC_LUT_WHITE_OFFSET_BLUE ; 
 scalar_t__ mmDC_LUT_WHITE_OFFSET_GREEN ; 
 scalar_t__ mmDC_LUT_WHITE_OFFSET_RED ; 
 scalar_t__ mmDC_LUT_WRITE_EN_MASK ; 
 scalar_t__ mmDEGAMMA_CONTROL ; 
 scalar_t__ mmDENORM_CONTROL ; 
 scalar_t__ mmGAMUT_REMAP_CONTROL ; 
 scalar_t__ mmINPUT_CSC_CONTROL ; 
 scalar_t__ mmINPUT_GAMMA_CONTROL ; 
 scalar_t__ mmOUTPUT_CSC_CONTROL ; 
 scalar_t__ mmPRESCALE_GRPH_CONTROL ; 
 scalar_t__ mmPRESCALE_OVL_CONTROL ; 
 scalar_t__ mmREGAMMA_CONTROL ; 
 struct amdgpu_crtc* FUNC4 (struct drm_crtc*) ; 

__attribute__((used)) static void FUNC5(struct drm_crtc *crtc)
{
	struct amdgpu_crtc *amdgpu_crtc = FUNC4(crtc);
	struct drm_device *dev = crtc->dev;
	struct amdgpu_device *adev = dev->dev_private;
	u16 *r, *g, *b;
	int i;
	u32 tmp;

	FUNC0("%d\n", amdgpu_crtc->crtc_id);

	tmp = FUNC2(mmINPUT_CSC_CONTROL + amdgpu_crtc->crtc_offset);
	tmp = FUNC1(tmp, INPUT_CSC_CONTROL, INPUT_CSC_GRPH_MODE, 0);
	tmp = FUNC1(tmp, INPUT_CSC_CONTROL, INPUT_CSC_OVL_MODE, 0);
	FUNC3(mmINPUT_CSC_CONTROL + amdgpu_crtc->crtc_offset, tmp);

	tmp = FUNC2(mmPRESCALE_GRPH_CONTROL + amdgpu_crtc->crtc_offset);
	tmp = FUNC1(tmp, PRESCALE_GRPH_CONTROL, GRPH_PRESCALE_BYPASS, 1);
	FUNC3(mmPRESCALE_GRPH_CONTROL + amdgpu_crtc->crtc_offset, tmp);

	tmp = FUNC2(mmPRESCALE_OVL_CONTROL + amdgpu_crtc->crtc_offset);
	tmp = FUNC1(tmp, PRESCALE_OVL_CONTROL, OVL_PRESCALE_BYPASS, 1);
	FUNC3(mmPRESCALE_OVL_CONTROL + amdgpu_crtc->crtc_offset, tmp);

	tmp = FUNC2(mmINPUT_GAMMA_CONTROL + amdgpu_crtc->crtc_offset);
	tmp = FUNC1(tmp, INPUT_GAMMA_CONTROL, GRPH_INPUT_GAMMA_MODE, 0);
	tmp = FUNC1(tmp, INPUT_GAMMA_CONTROL, OVL_INPUT_GAMMA_MODE, 0);
	FUNC3(mmINPUT_GAMMA_CONTROL + amdgpu_crtc->crtc_offset, tmp);

	FUNC3(mmDC_LUT_CONTROL + amdgpu_crtc->crtc_offset, 0);

	FUNC3(mmDC_LUT_BLACK_OFFSET_BLUE + amdgpu_crtc->crtc_offset, 0);
	FUNC3(mmDC_LUT_BLACK_OFFSET_GREEN + amdgpu_crtc->crtc_offset, 0);
	FUNC3(mmDC_LUT_BLACK_OFFSET_RED + amdgpu_crtc->crtc_offset, 0);

	FUNC3(mmDC_LUT_WHITE_OFFSET_BLUE + amdgpu_crtc->crtc_offset, 0xffff);
	FUNC3(mmDC_LUT_WHITE_OFFSET_GREEN + amdgpu_crtc->crtc_offset, 0xffff);
	FUNC3(mmDC_LUT_WHITE_OFFSET_RED + amdgpu_crtc->crtc_offset, 0xffff);

	FUNC3(mmDC_LUT_RW_MODE + amdgpu_crtc->crtc_offset, 0);
	FUNC3(mmDC_LUT_WRITE_EN_MASK + amdgpu_crtc->crtc_offset, 0x00000007);

	FUNC3(mmDC_LUT_RW_INDEX + amdgpu_crtc->crtc_offset, 0);
	r = crtc->gamma_store;
	g = r + crtc->gamma_size;
	b = g + crtc->gamma_size;
	for (i = 0; i < 256; i++) {
		FUNC3(mmDC_LUT_30_COLOR + amdgpu_crtc->crtc_offset,
		       ((*r++ & 0xffc0) << 14) |
		       ((*g++ & 0xffc0) << 4) |
		       (*b++ >> 6));
	}

	tmp = FUNC2(mmDEGAMMA_CONTROL + amdgpu_crtc->crtc_offset);
	tmp = FUNC1(tmp, DEGAMMA_CONTROL, GRPH_DEGAMMA_MODE, 0);
	tmp = FUNC1(tmp, DEGAMMA_CONTROL, OVL_DEGAMMA_MODE, 0);
	tmp = FUNC1(tmp, DEGAMMA_CONTROL, CURSOR_DEGAMMA_MODE, 0);
	FUNC3(mmDEGAMMA_CONTROL + amdgpu_crtc->crtc_offset, tmp);

	tmp = FUNC2(mmGAMUT_REMAP_CONTROL + amdgpu_crtc->crtc_offset);
	tmp = FUNC1(tmp, GAMUT_REMAP_CONTROL, GRPH_GAMUT_REMAP_MODE, 0);
	tmp = FUNC1(tmp, GAMUT_REMAP_CONTROL, OVL_GAMUT_REMAP_MODE, 0);
	FUNC3(mmGAMUT_REMAP_CONTROL + amdgpu_crtc->crtc_offset, tmp);

	tmp = FUNC2(mmREGAMMA_CONTROL + amdgpu_crtc->crtc_offset);
	tmp = FUNC1(tmp, REGAMMA_CONTROL, GRPH_REGAMMA_MODE, 0);
	tmp = FUNC1(tmp, REGAMMA_CONTROL, OVL_REGAMMA_MODE, 0);
	FUNC3(mmREGAMMA_CONTROL + amdgpu_crtc->crtc_offset, tmp);

	tmp = FUNC2(mmOUTPUT_CSC_CONTROL + amdgpu_crtc->crtc_offset);
	tmp = FUNC1(tmp, OUTPUT_CSC_CONTROL, OUTPUT_CSC_GRPH_MODE, 0);
	tmp = FUNC1(tmp, OUTPUT_CSC_CONTROL, OUTPUT_CSC_OVL_MODE, 0);
	FUNC3(mmOUTPUT_CSC_CONTROL + amdgpu_crtc->crtc_offset, tmp);

	/* XXX match this to the depth of the crtc fmt block, move to modeset? */
	FUNC3(mmDENORM_CONTROL + amdgpu_crtc->crtc_offset, 0);
	/* XXX this only needs to be programmed once per crtc at startup,
	 * not sure where the best place for it is
	 */
	tmp = FUNC2(mmALPHA_CONTROL + amdgpu_crtc->crtc_offset);
	tmp = FUNC1(tmp, ALPHA_CONTROL, CURSOR_ALPHA_BLND_ENA, 1);
	FUNC3(mmALPHA_CONTROL + amdgpu_crtc->crtc_offset, tmp);
}