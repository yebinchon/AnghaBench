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
struct gma_crtc {int pipe; } ;
struct gma_clock_t {int m2; int n; int vco; int p2; int /*<<< orphan*/  p1; } ;
struct drm_device {int dummy; } ;
struct drm_crtc {int dummy; } ;

/* Variables and functions */
 int DDI0_SELECT ; 
 int DDI_MASK ; 
 int DPLL_A ; 
 int DPLL_B ; 
 int DPLL_SYNCLOCK_ENABLE ; 
 int DPLL_VGA_MODE_DIS ; 
 int DP_MASK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int EINVAL ; 
 int LANE_PLL_ENABLE ; 
 int LANE_PLL_MASK ; 
 int FUNC2 (int) ; 
 int PSB_LANE0 ; 
 int PSB_LANE1 ; 
 int PSB_LANE2 ; 
 int PSB_LANE3 ; 
 int REF_CLK_DPLL ; 
 int REF_CLK_DPLLA ; 
 int REF_CLK_MASK ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int FUNC4 (int) ; 
 int SB_M_DIVIDER_MASK ; 
 int SB_M_DIVIDER_SHIFT ; 
 int SB_N_CB_TUNE_MASK ; 
 int SB_N_CB_TUNE_SHIFT ; 
 int SB_N_DIVIDER_MASK ; 
 int SB_N_DIVIDER_SHIFT ; 
 int FUNC5 (int) ; 
 int SB_N_VCO_SEL_MASK ; 
 int SB_N_VCO_SEL_SHIFT ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  SB_P1_DIVIDER ; 
 int SB_P1_DIVIDER_MASK ; 
 int /*<<< orphan*/  SB_P2_10 ; 
 int /*<<< orphan*/  SB_P2_14 ; 
 int /*<<< orphan*/  SB_P2_5 ; 
 int /*<<< orphan*/  SB_P2_7 ; 
 int /*<<< orphan*/  SB_P2_DIVIDER ; 
 int SB_P2_DIVIDER_MASK ; 
 int SB_REF_DPLLA ; 
 int SB_REF_DPLLB ; 
 int FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct drm_device*,int,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_device*) ; 
 int FUNC11 (struct drm_device*,int,int) ; 
 struct gma_crtc* FUNC12 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 

__attribute__((used)) static int
FUNC14(struct drm_device *dev, struct drm_crtc *crtc,
		       struct gma_clock_t *clock, bool is_lvds, u32 ddi_select)
{
	struct gma_crtc *gma_crtc = FUNC12(crtc);
	int pipe = gma_crtc->pipe;
	u32 m, n_vco, p;
	int ret = 0;
	int dpll_reg = (pipe == 0) ? DPLL_A : DPLL_B;
	int ref_sfr = (pipe == 0) ? SB_REF_DPLLA : SB_REF_DPLLB;
	u32 ref_value;
	u32 lane_reg, lane_value;

	FUNC10(dev);

	FUNC3(dpll_reg, DPLL_SYNCLOCK_ENABLE | DPLL_VGA_MODE_DIS);

	FUNC13(100);

	/* Follow the BIOS and write the REF/SFR Register. Hardcoded value */
	ref_value = 0x68A701;

	FUNC11(dev, FUNC7(pipe), ref_value);

	/* We don't know what the other fields of these regs are, so
	 * leave them in place.
	 */
	/*
	 * The BIT 14:13 of 0x8010/0x8030 is used to select the ref clk
	 * for the pipe A/B. Display spec 1.06 has wrong definition.
	 * Correct definition is like below:
	 *
	 * refclka mean use clock from same PLL
	 *
	 * if DPLLA sets 01 and DPLLB sets 01, they use clock from their pll
	 *
	 * if DPLLA sets 01 and DPLLB sets 02, both use clk from DPLLA
	 *
	 */
	ret = FUNC9(dev, ref_sfr, &ref_value);
	if (ret)
		return ret;
	ref_value &= ~(REF_CLK_MASK);

	/* use DPLL_A for pipeB on CRT/HDMI */
	if (pipe == 1 && !is_lvds && !(ddi_select & DP_MASK)) {
		FUNC0("use DPLLA for pipe B\n");
		ref_value |= REF_CLK_DPLLA;
	} else {
		FUNC0("use their DPLL for pipe A/B\n");
		ref_value |= REF_CLK_DPLL;
	}
	ret = FUNC11(dev, ref_sfr, ref_value);
	if (ret)
		return ret;

	ret = FUNC9(dev, FUNC4(pipe), &m);
	if (ret)
		return ret;
	m &= ~SB_M_DIVIDER_MASK;
	m |= ((clock->m2) << SB_M_DIVIDER_SHIFT);
	ret = FUNC11(dev, FUNC4(pipe), m);
	if (ret)
		return ret;

	ret = FUNC9(dev, FUNC5(pipe), &n_vco);
	if (ret)
		return ret;

	/* Follow the BIOS to program the N_DIVIDER REG */
	n_vco &= 0xFFFF;
	n_vco |= 0x107;
	n_vco &= ~(SB_N_VCO_SEL_MASK |
		   SB_N_DIVIDER_MASK |
		   SB_N_CB_TUNE_MASK);

	n_vco |= ((clock->n) << SB_N_DIVIDER_SHIFT);

	if (clock->vco < 2250000) {
		n_vco |= (2 << SB_N_CB_TUNE_SHIFT);
		n_vco |= (0 << SB_N_VCO_SEL_SHIFT);
	} else if (clock->vco < 2750000) {
		n_vco |= (1 << SB_N_CB_TUNE_SHIFT);
		n_vco |= (1 << SB_N_VCO_SEL_SHIFT);
	} else if (clock->vco < 3300000) {
		n_vco |= (0 << SB_N_CB_TUNE_SHIFT);
		n_vco |= (2 << SB_N_VCO_SEL_SHIFT);
	} else {
		n_vco |= (0 << SB_N_CB_TUNE_SHIFT);
		n_vco |= (3 << SB_N_VCO_SEL_SHIFT);
	}

	ret = FUNC11(dev, FUNC5(pipe), n_vco);
	if (ret)
		return ret;

	ret = FUNC9(dev, FUNC6(pipe), &p);
	if (ret)
		return ret;
	p &= ~(SB_P2_DIVIDER_MASK | SB_P1_DIVIDER_MASK);
	p |= FUNC8(clock->p1, SB_P1_DIVIDER);
	switch (clock->p2) {
	case 5:
		p |= FUNC8(SB_P2_5, SB_P2_DIVIDER);
		break;
	case 10:
		p |= FUNC8(SB_P2_10, SB_P2_DIVIDER);
		break;
	case 14:
		p |= FUNC8(SB_P2_14, SB_P2_DIVIDER);
		break;
	case 7:
		p |= FUNC8(SB_P2_7, SB_P2_DIVIDER);
		break;
	default:
		FUNC1("Bad P2 clock: %d\n", clock->p2);
		return -EINVAL;
	}
	ret = FUNC11(dev, FUNC6(pipe), p);
	if (ret)
		return ret;

	if (ddi_select) {
		if ((ddi_select & DDI_MASK) == DDI0_SELECT) {
			lane_reg = PSB_LANE0;
			FUNC9(dev, lane_reg, &lane_value);
			lane_value &= ~(LANE_PLL_MASK);
			lane_value |= LANE_PLL_ENABLE | FUNC2(pipe);
			FUNC11(dev, lane_reg, lane_value);

			lane_reg = PSB_LANE1;
			FUNC9(dev, lane_reg, &lane_value);
			lane_value &= ~(LANE_PLL_MASK);
			lane_value |= LANE_PLL_ENABLE | FUNC2(pipe);
			FUNC11(dev, lane_reg, lane_value);
		} else {
			lane_reg = PSB_LANE2;
			FUNC9(dev, lane_reg, &lane_value);
			lane_value &= ~(LANE_PLL_MASK);
			lane_value |= LANE_PLL_ENABLE | FUNC2(pipe);
			FUNC11(dev, lane_reg, lane_value);

			lane_reg = PSB_LANE3;
			FUNC9(dev, lane_reg, &lane_value);
			lane_value &= ~(LANE_PLL_MASK);
			lane_value |= LANE_PLL_ENABLE | FUNC2(pipe);
			FUNC11(dev, lane_reg, lane_value);
		}
	}
	return 0;
}