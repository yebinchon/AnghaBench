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
typedef  int u8 ;
typedef  int u32 ;
struct TYPE_8__ {int mpll_ad_func_cntl; int mpll_ad_func_cntl_2; int mpll_dq_func_cntl; int mpll_dq_func_cntl_2; int mclk_pwrmgt_cntl; int dll_cntl; } ;
struct TYPE_9__ {TYPE_1__ rv770; } ;
struct rv7xx_power_info {scalar_t__ mem_gddr5; TYPE_2__ clk_regs; } ;
struct TYPE_10__ {int reference_freq; } ;
struct TYPE_11__ {TYPE_3__ mpll; } ;
struct radeon_device {TYPE_4__ clock; } ;
struct atom_clock_dividers {int ref_div; scalar_t__ vco_mode; int /*<<< orphan*/  post_div; } ;
struct TYPE_12__ {void* vDLL_CNTL; void* vMCLK_PWRMGT_CNTL; void* vMPLL_DQ_FUNC_CNTL_2; void* vMPLL_DQ_FUNC_CNTL; void* vMPLL_AD_FUNC_CNTL_2; void* vMPLL_AD_FUNC_CNTL; void* mclk_value; } ;
struct TYPE_13__ {TYPE_5__ mclk770; } ;
typedef  TYPE_6__ RV7XX_SMC_MCLK_VALUE ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int CLKFRAC_MASK ; 
 int CLKF_MASK ; 
 int FUNC2 (int) ; 
 int CLKR_MASK ; 
 int /*<<< orphan*/  COMPUTE_MEMORY_PLL_PARAM ; 
 int EINVAL ; 
 int FUNC3 (int) ; 
 int IBIAS_MASK ; 
 int VCO_MODE ; 
 int FUNC4 (int) ; 
 int YCLK_POST_DIV_MASK ; 
 void* FUNC5 (int) ; 
 int FUNC6 (struct radeon_device*,int /*<<< orphan*/ ,int,int,struct atom_clock_dividers*) ; 
 int /*<<< orphan*/  FUNC7 (int,int,scalar_t__,struct atom_clock_dividers*,int*,int*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int*) ; 
 struct rv7xx_power_info* FUNC9 (struct radeon_device*) ; 
 int FUNC10 (struct radeon_device*,int) ; 

__attribute__((used)) static int FUNC11(struct radeon_device *rdev,
				     u32 engine_clock, u32 memory_clock,
				     RV7XX_SMC_MCLK_VALUE *mclk)
{
	struct rv7xx_power_info *pi = FUNC9(rdev);
	u8 encoded_reference_dividers[] = { 0, 16, 17, 20, 21 };
	u32 mpll_ad_func_cntl =
		pi->clk_regs.rv770.mpll_ad_func_cntl;
	u32 mpll_ad_func_cntl_2 =
		pi->clk_regs.rv770.mpll_ad_func_cntl_2;
	u32 mpll_dq_func_cntl =
		pi->clk_regs.rv770.mpll_dq_func_cntl;
	u32 mpll_dq_func_cntl_2 =
		pi->clk_regs.rv770.mpll_dq_func_cntl_2;
	u32 mclk_pwrmgt_cntl =
		pi->clk_regs.rv770.mclk_pwrmgt_cntl;
	u32 dll_cntl = pi->clk_regs.rv770.dll_cntl;
	struct atom_clock_dividers dividers;
	u32 reference_clock = rdev->clock.mpll.reference_freq;
	u32 clkf, clkfrac;
	u32 postdiv_yclk;
	u32 ibias;
	int ret;

	ret = FUNC6(rdev, COMPUTE_MEMORY_PLL_PARAM,
					     memory_clock, false, &dividers);
	if (ret)
		return ret;

	if ((dividers.ref_div < 1) || (dividers.ref_div > 5))
		return -EINVAL;

	FUNC7(memory_clock, reference_clock,
							 pi->mem_gddr5,
							 &dividers, &clkf, &clkfrac);

	ret = FUNC8(dividers.post_div, &postdiv_yclk);
	if (ret)
		return ret;

	ibias = FUNC10(rdev, clkf);

	mpll_ad_func_cntl &= ~(CLKR_MASK |
			       YCLK_POST_DIV_MASK |
			       CLKF_MASK |
			       CLKFRAC_MASK |
			       IBIAS_MASK);
	mpll_ad_func_cntl |= FUNC2(encoded_reference_dividers[dividers.ref_div - 1]);
	mpll_ad_func_cntl |= FUNC4(postdiv_yclk);
	mpll_ad_func_cntl |= FUNC0(clkf);
	mpll_ad_func_cntl |= FUNC1(clkfrac);
	mpll_ad_func_cntl |= FUNC3(ibias);

	if (dividers.vco_mode)
		mpll_ad_func_cntl_2 |= VCO_MODE;
	else
		mpll_ad_func_cntl_2 &= ~VCO_MODE;

	if (pi->mem_gddr5) {
		FUNC7(memory_clock,
								 reference_clock,
								 pi->mem_gddr5,
								 &dividers, &clkf, &clkfrac);

		ibias = FUNC10(rdev, clkf);

		ret = FUNC8(dividers.post_div, &postdiv_yclk);
		if (ret)
			return ret;

		mpll_dq_func_cntl &= ~(CLKR_MASK |
				       YCLK_POST_DIV_MASK |
				       CLKF_MASK |
				       CLKFRAC_MASK |
				       IBIAS_MASK);
		mpll_dq_func_cntl |= FUNC2(encoded_reference_dividers[dividers.ref_div - 1]);
		mpll_dq_func_cntl |= FUNC4(postdiv_yclk);
		mpll_dq_func_cntl |= FUNC0(clkf);
		mpll_dq_func_cntl |= FUNC1(clkfrac);
		mpll_dq_func_cntl |= FUNC3(ibias);

		if (dividers.vco_mode)
			mpll_dq_func_cntl_2 |= VCO_MODE;
		else
			mpll_dq_func_cntl_2 &= ~VCO_MODE;
	}

	mclk->mclk770.mclk_value = FUNC5(memory_clock);
	mclk->mclk770.vMPLL_AD_FUNC_CNTL = FUNC5(mpll_ad_func_cntl);
	mclk->mclk770.vMPLL_AD_FUNC_CNTL_2 = FUNC5(mpll_ad_func_cntl_2);
	mclk->mclk770.vMPLL_DQ_FUNC_CNTL = FUNC5(mpll_dq_func_cntl);
	mclk->mclk770.vMPLL_DQ_FUNC_CNTL_2 = FUNC5(mpll_dq_func_cntl_2);
	mclk->mclk770.vMCLK_PWRMGT_CNTL = FUNC5(mclk_pwrmgt_cntl);
	mclk->mclk770.vDLL_CNTL = FUNC5(dll_cntl);

	return 0;
}