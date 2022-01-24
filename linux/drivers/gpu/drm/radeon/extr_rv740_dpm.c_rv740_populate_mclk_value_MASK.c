#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_8__ {int mpll_ad_func_cntl; int mpll_ad_func_cntl_2; int mpll_dq_func_cntl; int mpll_dq_func_cntl_2; int mclk_pwrmgt_cntl; int dll_cntl; int mpll_ss1; int mpll_ss2; } ;
struct TYPE_9__ {TYPE_1__ rv770; } ;
struct rv7xx_power_info {scalar_t__ mem_gddr5; scalar_t__ mclk_ss; TYPE_2__ clk_regs; } ;
struct TYPE_10__ {int reference_freq; } ;
struct TYPE_11__ {TYPE_3__ mpll; } ;
struct radeon_device {TYPE_4__ clock; } ;
struct radeon_atom_ss {int rate; int percentage; } ;
struct atom_clock_dividers {int whole_fb_div; int post_div; int frac_fb_div; int /*<<< orphan*/  ref_div; scalar_t__ vco_mode; } ;
struct TYPE_12__ {void* vMPLL_SS2; void* vMPLL_SS; void* vDLL_CNTL; void* vMCLK_PWRMGT_CNTL; void* vMPLL_DQ_FUNC_CNTL_2; void* vMPLL_DQ_FUNC_CNTL; void* vMPLL_AD_FUNC_CNTL_2; void* vMPLL_AD_FUNC_CNTL; void* mclk_value; } ;
struct TYPE_13__ {TYPE_5__ mclk770; } ;
typedef  TYPE_6__ RV7XX_SMC_MCLK_VALUE ;

/* Variables and functions */
 int /*<<< orphan*/  ASIC_INTERNAL_MEMORY_SS ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int CLKFRAC_MASK ; 
 int CLKF_MASK ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int CLKR_MASK ; 
 int FUNC3 (int) ; 
 int CLKS_MASK ; 
 int FUNC4 (int) ; 
 int CLKV_MASK ; 
 int /*<<< orphan*/  COMPUTE_MEMORY_PLL_PARAM ; 
 int FUNC5 (int) ; 
 int DLL_SPEED_MASK ; 
 int FUNC6 (int) ; 
 int IBIAS_MASK ; 
 int VCO_MODE ; 
 int FUNC7 (int) ; 
 int YCLK_POST_DIV_MASK ; 
 void* FUNC8 (int) ; 
 int FUNC9 (struct radeon_device*,int /*<<< orphan*/ ,int,int,struct atom_clock_dividers*) ; 
 scalar_t__ FUNC10 (struct radeon_device*,struct radeon_atom_ss*,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (scalar_t__,int) ; 
 struct rv7xx_power_info* FUNC13 (struct radeon_device*) ; 
 int FUNC14 (struct radeon_device*,int) ; 

int FUNC15(struct radeon_device *rdev,
			      u32 engine_clock, u32 memory_clock,
			      RV7XX_SMC_MCLK_VALUE *mclk)
{
	struct rv7xx_power_info *pi = FUNC13(rdev);
	u32 mpll_ad_func_cntl = pi->clk_regs.rv770.mpll_ad_func_cntl;
	u32 mpll_ad_func_cntl_2 = pi->clk_regs.rv770.mpll_ad_func_cntl_2;
	u32 mpll_dq_func_cntl = pi->clk_regs.rv770.mpll_dq_func_cntl;
	u32 mpll_dq_func_cntl_2 = pi->clk_regs.rv770.mpll_dq_func_cntl_2;
	u32 mclk_pwrmgt_cntl = pi->clk_regs.rv770.mclk_pwrmgt_cntl;
	u32 dll_cntl = pi->clk_regs.rv770.dll_cntl;
	u32 mpll_ss1 = pi->clk_regs.rv770.mpll_ss1;
	u32 mpll_ss2 = pi->clk_regs.rv770.mpll_ss2;
	struct atom_clock_dividers dividers;
	u32 ibias;
	u32 dll_speed;
	int ret;

	ret = FUNC9(rdev, COMPUTE_MEMORY_PLL_PARAM,
					     memory_clock, false, &dividers);
	if (ret)
		return ret;

	ibias = FUNC14(rdev, dividers.whole_fb_div);

	mpll_ad_func_cntl &= ~(CLKR_MASK |
			       YCLK_POST_DIV_MASK |
			       CLKF_MASK |
			       CLKFRAC_MASK |
			       IBIAS_MASK);
	mpll_ad_func_cntl |= FUNC2(dividers.ref_div);
	mpll_ad_func_cntl |= FUNC7(dividers.post_div);
	mpll_ad_func_cntl |= FUNC0(dividers.whole_fb_div);
	mpll_ad_func_cntl |= FUNC1(dividers.frac_fb_div);
	mpll_ad_func_cntl |= FUNC6(ibias);

	if (dividers.vco_mode)
		mpll_ad_func_cntl_2 |= VCO_MODE;
	else
		mpll_ad_func_cntl_2 &= ~VCO_MODE;

	if (pi->mem_gddr5) {
		mpll_dq_func_cntl &= ~(CLKR_MASK |
				       YCLK_POST_DIV_MASK |
				       CLKF_MASK |
				       CLKFRAC_MASK |
				       IBIAS_MASK);
		mpll_dq_func_cntl |= FUNC2(dividers.ref_div);
		mpll_dq_func_cntl |= FUNC7(dividers.post_div);
		mpll_dq_func_cntl |= FUNC0(dividers.whole_fb_div);
		mpll_dq_func_cntl |= FUNC1(dividers.frac_fb_div);
		mpll_dq_func_cntl |= FUNC6(ibias);

		if (dividers.vco_mode)
			mpll_dq_func_cntl_2 |= VCO_MODE;
		else
			mpll_dq_func_cntl_2 &= ~VCO_MODE;
	}

	if (pi->mclk_ss) {
		struct radeon_atom_ss ss;
		u32 vco_freq = memory_clock * dividers.post_div;

		if (FUNC10(rdev, &ss,
						     ASIC_INTERNAL_MEMORY_SS, vco_freq)) {
			u32 reference_clock = rdev->clock.mpll.reference_freq;
			u32 decoded_ref = FUNC11(dividers.ref_div);
			u32 clk_s = reference_clock * 5 / (decoded_ref * ss.rate);
			u32 clk_v = 0x40000 * ss.percentage *
				(dividers.whole_fb_div + (dividers.frac_fb_div / 8)) / (clk_s * 10000);

			mpll_ss1 &= ~CLKV_MASK;
			mpll_ss1 |= FUNC4(clk_v);

			mpll_ss2 &= ~CLKS_MASK;
			mpll_ss2 |= FUNC3(clk_s);
		}
	}

	dll_speed = FUNC12(pi->mem_gddr5,
					memory_clock);

	mclk_pwrmgt_cntl &= ~DLL_SPEED_MASK;
	mclk_pwrmgt_cntl |= FUNC5(dll_speed);

	mclk->mclk770.mclk_value = FUNC8(memory_clock);
	mclk->mclk770.vMPLL_AD_FUNC_CNTL = FUNC8(mpll_ad_func_cntl);
	mclk->mclk770.vMPLL_AD_FUNC_CNTL_2 = FUNC8(mpll_ad_func_cntl_2);
	mclk->mclk770.vMPLL_DQ_FUNC_CNTL = FUNC8(mpll_dq_func_cntl);
	mclk->mclk770.vMPLL_DQ_FUNC_CNTL_2 = FUNC8(mpll_dq_func_cntl_2);
	mclk->mclk770.vMCLK_PWRMGT_CNTL = FUNC8(mclk_pwrmgt_cntl);
	mclk->mclk770.vDLL_CNTL = FUNC8(dll_cntl);
	mclk->mclk770.vMPLL_SS = FUNC8(mpll_ss1);
	mclk->mclk770.vMPLL_SS2 = FUNC8(mpll_ss2);

	return 0;
}