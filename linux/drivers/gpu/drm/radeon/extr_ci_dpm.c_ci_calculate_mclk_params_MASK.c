#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_7__ {int reference_freq; } ;
struct TYPE_8__ {TYPE_2__ mpll; } ;
struct radeon_device {TYPE_3__ clock; } ;
struct radeon_atom_ss {int rate; int percentage; } ;
struct TYPE_6__ {int dll_cntl; int mclk_pwrmgt_cntl; int mpll_ad_func_cntl; int mpll_dq_func_cntl; int mpll_func_cntl; int mpll_func_cntl_1; int mpll_func_cntl_2; int mpll_ss1; int mpll_ss2; } ;
struct ci_power_info {scalar_t__ caps_mclk_ss_support; scalar_t__ mem_gddr5; TYPE_1__ clock_registers; } ;
struct atom_mpll_param {int post_div; int qdr; int /*<<< orphan*/  dll_speed; int /*<<< orphan*/  yclk_sel; int /*<<< orphan*/  vco_mode; int /*<<< orphan*/  clkfrac; int /*<<< orphan*/  clkf; int /*<<< orphan*/  bwcntl; } ;
struct TYPE_9__ {int MclkFrequency; int MpllFuncCntl; int MpllFuncCntl_1; int MpllFuncCntl_2; int MpllAdFuncCntl; int MpllDqFuncCntl; int MclkPwrmgtCntl; int DllCntl; int MpllSs1; int MpllSs2; } ;
typedef  TYPE_4__ SMU7_Discrete_MemoryLevel ;

/* Variables and functions */
 int /*<<< orphan*/  ASIC_INTERNAL_MEMORY_SS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int BWCTRL_MASK ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int CLKFRAC_MASK ; 
 int CLKF_MASK ; 
 int FUNC3 (int) ; 
 int CLKS_MASK ; 
 int FUNC4 (int) ; 
 int CLKV_MASK ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int DLL_SPEED_MASK ; 
 int MRDCK0_PDNB ; 
 int MRDCK1_PDNB ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int VCO_MODE_MASK ; 
 int FUNC7 (int) ; 
 int YCLK_POST_DIV_MASK ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int YCLK_SEL_MASK ; 
 struct ci_power_info* FUNC9 (struct radeon_device*) ; 
 int FUNC10 (struct radeon_device*,int,int,struct atom_mpll_param*) ; 
 scalar_t__ FUNC11 (struct radeon_device*,struct radeon_atom_ss*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC12(struct radeon_device *rdev,
				    u32 memory_clock,
				    SMU7_Discrete_MemoryLevel *mclk,
				    bool strobe_mode,
				    bool dll_state_on)
{
	struct ci_power_info *pi = FUNC9(rdev);
	u32  dll_cntl = pi->clock_registers.dll_cntl;
	u32  mclk_pwrmgt_cntl = pi->clock_registers.mclk_pwrmgt_cntl;
	u32  mpll_ad_func_cntl = pi->clock_registers.mpll_ad_func_cntl;
	u32  mpll_dq_func_cntl = pi->clock_registers.mpll_dq_func_cntl;
	u32  mpll_func_cntl = pi->clock_registers.mpll_func_cntl;
	u32  mpll_func_cntl_1 = pi->clock_registers.mpll_func_cntl_1;
	u32  mpll_func_cntl_2 = pi->clock_registers.mpll_func_cntl_2;
	u32  mpll_ss1 = pi->clock_registers.mpll_ss1;
	u32  mpll_ss2 = pi->clock_registers.mpll_ss2;
	struct atom_mpll_param mpll_param;
	int ret;

	ret = FUNC10(rdev, memory_clock, strobe_mode, &mpll_param);
	if (ret)
		return ret;

	mpll_func_cntl &= ~BWCTRL_MASK;
	mpll_func_cntl |= FUNC0(mpll_param.bwcntl);

	mpll_func_cntl_1 &= ~(CLKF_MASK | CLKFRAC_MASK | VCO_MODE_MASK);
	mpll_func_cntl_1 |= FUNC1(mpll_param.clkf) |
		FUNC2(mpll_param.clkfrac) | FUNC6(mpll_param.vco_mode);

	mpll_ad_func_cntl &= ~YCLK_POST_DIV_MASK;
	mpll_ad_func_cntl |= FUNC7(mpll_param.post_div);

	if (pi->mem_gddr5) {
		mpll_dq_func_cntl &= ~(YCLK_SEL_MASK | YCLK_POST_DIV_MASK);
		mpll_dq_func_cntl |= FUNC8(mpll_param.yclk_sel) |
			FUNC7(mpll_param.post_div);
	}

	if (pi->caps_mclk_ss_support) {
		struct radeon_atom_ss ss;
		u32 freq_nom;
		u32 tmp;
		u32 reference_clock = rdev->clock.mpll.reference_freq;

		if (mpll_param.qdr == 1)
			freq_nom = memory_clock * 4 * (1 << mpll_param.post_div);
		else
			freq_nom = memory_clock * 2 * (1 << mpll_param.post_div);

		tmp = (freq_nom / reference_clock);
		tmp = tmp * tmp;
		if (FUNC11(rdev, &ss,
						     ASIC_INTERNAL_MEMORY_SS, freq_nom)) {
			u32 clks = reference_clock * 5 / ss.rate;
			u32 clkv = (u32)((((131 * ss.percentage * ss.rate) / 100) * tmp) / freq_nom);

			mpll_ss1 &= ~CLKV_MASK;
			mpll_ss1 |= FUNC4(clkv);

			mpll_ss2 &= ~CLKS_MASK;
			mpll_ss2 |= FUNC3(clks);
		}
	}

	mclk_pwrmgt_cntl &= ~DLL_SPEED_MASK;
	mclk_pwrmgt_cntl |= FUNC5(mpll_param.dll_speed);

	if (dll_state_on)
		mclk_pwrmgt_cntl |= MRDCK0_PDNB | MRDCK1_PDNB;
	else
		mclk_pwrmgt_cntl &= ~(MRDCK0_PDNB | MRDCK1_PDNB);

	mclk->MclkFrequency = memory_clock;
	mclk->MpllFuncCntl = mpll_func_cntl;
	mclk->MpllFuncCntl_1 = mpll_func_cntl_1;
	mclk->MpllFuncCntl_2 = mpll_func_cntl_2;
	mclk->MpllAdFuncCntl = mpll_ad_func_cntl;
	mclk->MpllDqFuncCntl = mpll_dq_func_cntl;
	mclk->MclkPwrmgtCntl = mclk_pwrmgt_cntl;
	mclk->DllCntl = dll_cntl;
	mclk->MpllSs1 = mpll_ss1;
	mclk->MpllSs2 = mpll_ss2;

	return 0;
}