#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct pci_dev {int dummy; } ;
struct amdgpu_device {int flags; scalar_t__ asic_type; TYPE_1__* pdev; } ;
struct TYPE_4__ {struct pci_dev* self; } ;
struct TYPE_3__ {TYPE_2__* bus; } ;

/* Variables and functions */
 int AMD_IS_APU ; 
 int BCLK_AS_XCLK ; 
 int /*<<< orphan*/  CG_CLKPIN_CNTL ; 
 int /*<<< orphan*/  CG_CLKPIN_CNTL_2 ; 
 scalar_t__ CHIP_HAINAN ; 
 scalar_t__ CHIP_OLAND ; 
 int FUNC0 (int) ; 
 int CMON_CLK_SEL_MASK ; 
 int FUNC1 (int) ; 
 int DEEP_SLEEP_CLK_SEL_MASK ; 
 int FORCE_BIF_REFCLK_EN ; 
 int LC_ALLOW_PDWN_IN_L1 ; 
 int LC_ALLOW_PDWN_IN_L23 ; 
 int FUNC2 (int) ; 
 int LC_DYN_LANES_PWR_STATE_MASK ; 
 int LC_GO_TO_RECOVERY ; 
 int FUNC3 (int) ; 
 int LC_L0S_INACTIVITY_MASK ; 
 int FUNC4 (int) ; 
 int LC_L1_INACTIVITY_MASK ; 
 int LC_N_FTS_MASK ; 
 int LC_PMI_TO_L1_DIS ; 
 int LC_REVERSE_RCVR ; 
 int LC_REVERSE_XMIT ; 
 int FUNC5 (int) ; 
 int LC_XMIT_N_FTS_MASK ; 
 int LC_XMIT_N_FTS_OVERRIDE_EN ; 
 int FUNC6 (int) ; 
 int LS2_EXIT_TIME_MASK ; 
 int /*<<< orphan*/  MISC_CLK_CNTL ; 
 int /*<<< orphan*/  MPLL_BYPASSCLK_SEL ; 
 int FUNC7 (int) ; 
 int MPLL_CLKOUT_SEL_MASK ; 
 int MST_MEM_LS_EN ; 
 int /*<<< orphan*/  PB0_PIF_CNTL ; 
 int /*<<< orphan*/  PB0_PIF_PWRDOWN_0 ; 
 int /*<<< orphan*/  PB0_PIF_PWRDOWN_1 ; 
 int /*<<< orphan*/  PB0_PIF_PWRDOWN_2 ; 
 int /*<<< orphan*/  PB0_PIF_PWRDOWN_3 ; 
 int /*<<< orphan*/  PB1_PIF_CNTL ; 
 int /*<<< orphan*/  PB1_PIF_PWRDOWN_0 ; 
 int /*<<< orphan*/  PB1_PIF_PWRDOWN_1 ; 
 int /*<<< orphan*/  PB1_PIF_PWRDOWN_2 ; 
 int /*<<< orphan*/  PB1_PIF_PWRDOWN_3 ; 
 int /*<<< orphan*/  PCIE_CNTL2 ; 
 int /*<<< orphan*/  PCIE_LC_CNTL ; 
 int /*<<< orphan*/  PCIE_LC_CNTL2 ; 
 int /*<<< orphan*/  PCIE_LC_CNTL3 ; 
 int /*<<< orphan*/  PCIE_LC_LINK_WIDTH_CNTL ; 
 int /*<<< orphan*/  PCIE_LC_N_FTS_CNTL ; 
 int /*<<< orphan*/  PCIE_LC_STATUS1 ; 
 int /*<<< orphan*/  PCIE_P_CNTL ; 
 int /*<<< orphan*/  PCI_EXP_LNKCAP ; 
 int PCI_EXP_LNKCAP_CLKPM ; 
 int FUNC8 (int) ; 
 int PLL_POWER_STATE_IN_OFF_0_MASK ; 
 int FUNC9 (int) ; 
 int PLL_POWER_STATE_IN_OFF_1_MASK ; 
 int FUNC10 (int) ; 
 int PLL_POWER_STATE_IN_TXS2_0_MASK ; 
 int FUNC11 (int) ; 
 int PLL_POWER_STATE_IN_TXS2_1_MASK ; 
 int PLL_RAMP_UP_TIME_0_MASK ; 
 int PLL_RAMP_UP_TIME_1_MASK ; 
 int PLL_RAMP_UP_TIME_2_MASK ; 
 int PLL_RAMP_UP_TIME_3_MASK ; 
 int P_IGNORE_EDB_ERR ; 
 int REPLAY_MEM_LS_EN ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int SLV_MEM_LS_EN ; 
 int /*<<< orphan*/  SPLL_CNTL_MODE ; 
 int SPLL_REFCLK_SEL_MASK ; 
 int /*<<< orphan*/  THM_CLK_CNTL ; 
 int FUNC15 (int) ; 
 int TMON_CLK_SEL_MASK ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int) ; 
 int FUNC19 (int) ; 
 int ZCLK_SEL_MASK ; 
 scalar_t__ amdgpu_aspm ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC21 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int FUNC22 (struct amdgpu_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct amdgpu_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC24 (struct amdgpu_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct amdgpu_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC26(struct amdgpu_device *adev)
{
	u32 data, orig;
	bool disable_l0s = false, disable_l1 = false, disable_plloff_in_l1 = false;
	bool disable_clkreq = false;

	if (amdgpu_aspm == 0)
		return;

	if (adev->flags & AMD_IS_APU)
		return;
	orig = data = FUNC14(PCIE_LC_N_FTS_CNTL);
	data &= ~LC_XMIT_N_FTS_MASK;
	data |= FUNC5(0x24) | LC_XMIT_N_FTS_OVERRIDE_EN;
	if (orig != data)
		FUNC18(PCIE_LC_N_FTS_CNTL, data);

	orig = data = FUNC14(PCIE_LC_CNTL3);
	data |= LC_GO_TO_RECOVERY;
	if (orig != data)
		FUNC18(PCIE_LC_CNTL3, data);

	orig = data = FUNC13(PCIE_P_CNTL);
	data |= P_IGNORE_EDB_ERR;
	if (orig != data)
		FUNC17(PCIE_P_CNTL, data);

	orig = data = FUNC14(PCIE_LC_CNTL);
	data &= ~(LC_L0S_INACTIVITY_MASK | LC_L1_INACTIVITY_MASK);
	data |= LC_PMI_TO_L1_DIS;
	if (!disable_l0s)
		data |= FUNC3(7);

	if (!disable_l1) {
		data |= FUNC4(7);
		data &= ~LC_PMI_TO_L1_DIS;
		if (orig != data)
			FUNC18(PCIE_LC_CNTL, data);

		if (!disable_plloff_in_l1) {
			bool clk_req_support;

			orig = data = FUNC22(adev,PB0_PIF_PWRDOWN_0);
			data &= ~(PLL_POWER_STATE_IN_OFF_0_MASK | PLL_POWER_STATE_IN_TXS2_0_MASK);
			data |= FUNC8(7) | FUNC10(7);
			if (orig != data)
				FUNC23(adev,PB0_PIF_PWRDOWN_0, data);

			orig = data = FUNC22(adev,PB0_PIF_PWRDOWN_1);
			data &= ~(PLL_POWER_STATE_IN_OFF_1_MASK | PLL_POWER_STATE_IN_TXS2_1_MASK);
			data |= FUNC9(7) | FUNC11(7);
			if (orig != data)
				FUNC23(adev,PB0_PIF_PWRDOWN_1, data);

			orig = data = FUNC24(adev,PB1_PIF_PWRDOWN_0);
			data &= ~(PLL_POWER_STATE_IN_OFF_0_MASK | PLL_POWER_STATE_IN_TXS2_0_MASK);
			data |= FUNC8(7) | FUNC10(7);
			if (orig != data)
				FUNC25(adev,PB1_PIF_PWRDOWN_0, data);

			orig = data = FUNC24(adev,PB1_PIF_PWRDOWN_1);
			data &= ~(PLL_POWER_STATE_IN_OFF_1_MASK | PLL_POWER_STATE_IN_TXS2_1_MASK);
			data |= FUNC9(7) | FUNC11(7);
			if (orig != data)
				FUNC25(adev,PB1_PIF_PWRDOWN_1, data);

			if ((adev->asic_type != CHIP_OLAND) && (adev->asic_type != CHIP_HAINAN)) {
				orig = data = FUNC22(adev,PB0_PIF_PWRDOWN_0);
				data &= ~PLL_RAMP_UP_TIME_0_MASK;
				if (orig != data)
					FUNC23(adev,PB0_PIF_PWRDOWN_0, data);

				orig = data = FUNC22(adev,PB0_PIF_PWRDOWN_1);
				data &= ~PLL_RAMP_UP_TIME_1_MASK;
				if (orig != data)
					FUNC23(adev,PB0_PIF_PWRDOWN_1, data);

				orig = data = FUNC22(adev,PB0_PIF_PWRDOWN_2);
				data &= ~PLL_RAMP_UP_TIME_2_MASK;
				if (orig != data)
					FUNC23(adev,PB0_PIF_PWRDOWN_2, data);

				orig = data = FUNC22(adev,PB0_PIF_PWRDOWN_3);
				data &= ~PLL_RAMP_UP_TIME_3_MASK;
				if (orig != data)
					FUNC23(adev,PB0_PIF_PWRDOWN_3, data);

				orig = data = FUNC24(adev,PB1_PIF_PWRDOWN_0);
				data &= ~PLL_RAMP_UP_TIME_0_MASK;
				if (orig != data)
					FUNC25(adev,PB1_PIF_PWRDOWN_0, data);

				orig = data = FUNC24(adev,PB1_PIF_PWRDOWN_1);
				data &= ~PLL_RAMP_UP_TIME_1_MASK;
				if (orig != data)
					FUNC25(adev,PB1_PIF_PWRDOWN_1, data);

				orig = data = FUNC24(adev,PB1_PIF_PWRDOWN_2);
				data &= ~PLL_RAMP_UP_TIME_2_MASK;
				if (orig != data)
					FUNC25(adev,PB1_PIF_PWRDOWN_2, data);

				orig = data = FUNC24(adev,PB1_PIF_PWRDOWN_3);
				data &= ~PLL_RAMP_UP_TIME_3_MASK;
				if (orig != data)
					FUNC25(adev,PB1_PIF_PWRDOWN_3, data);
			}
			orig = data = FUNC14(PCIE_LC_LINK_WIDTH_CNTL);
			data &= ~LC_DYN_LANES_PWR_STATE_MASK;
			data |= FUNC2(3);
			if (orig != data)
				FUNC18(PCIE_LC_LINK_WIDTH_CNTL, data);

			orig = data = FUNC22(adev,PB0_PIF_CNTL);
			data &= ~LS2_EXIT_TIME_MASK;
			if ((adev->asic_type == CHIP_OLAND) || (adev->asic_type == CHIP_HAINAN))
				data |= FUNC6(5);
			if (orig != data)
				FUNC23(adev,PB0_PIF_CNTL, data);

			orig = data = FUNC24(adev,PB1_PIF_CNTL);
			data &= ~LS2_EXIT_TIME_MASK;
			if ((adev->asic_type == CHIP_OLAND) || (adev->asic_type == CHIP_HAINAN))
				data |= FUNC6(5);
			if (orig != data)
				FUNC25(adev,PB1_PIF_CNTL, data);

			if (!disable_clkreq &&
			    !FUNC20(adev->pdev->bus)) {
				struct pci_dev *root = adev->pdev->bus->self;
				u32 lnkcap;

				clk_req_support = false;
				FUNC21(root, PCI_EXP_LNKCAP, &lnkcap);
				if (lnkcap & PCI_EXP_LNKCAP_CLKPM)
					clk_req_support = true;
			} else {
				clk_req_support = false;
			}

			if (clk_req_support) {
				orig = data = FUNC14(PCIE_LC_CNTL2);
				data |= LC_ALLOW_PDWN_IN_L1 | LC_ALLOW_PDWN_IN_L23;
				if (orig != data)
					FUNC18(PCIE_LC_CNTL2, data);

				orig = data = FUNC12(THM_CLK_CNTL);
				data &= ~(CMON_CLK_SEL_MASK | TMON_CLK_SEL_MASK);
				data |= FUNC0(1) | FUNC15(1);
				if (orig != data)
					FUNC16(THM_CLK_CNTL, data);

				orig = data = FUNC12(MISC_CLK_CNTL);
				data &= ~(DEEP_SLEEP_CLK_SEL_MASK | ZCLK_SEL_MASK);
				data |= FUNC1(1) | FUNC19(1);
				if (orig != data)
					FUNC16(MISC_CLK_CNTL, data);

				orig = data = FUNC12(CG_CLKPIN_CNTL);
				data &= ~BCLK_AS_XCLK;
				if (orig != data)
					FUNC16(CG_CLKPIN_CNTL, data);

				orig = data = FUNC12(CG_CLKPIN_CNTL_2);
				data &= ~FORCE_BIF_REFCLK_EN;
				if (orig != data)
					FUNC16(CG_CLKPIN_CNTL_2, data);

				orig = data = FUNC12(MPLL_BYPASSCLK_SEL);
				data &= ~MPLL_CLKOUT_SEL_MASK;
				data |= FUNC7(4);
				if (orig != data)
					FUNC16(MPLL_BYPASSCLK_SEL, data);

				orig = data = FUNC12(SPLL_CNTL_MODE);
				data &= ~SPLL_REFCLK_SEL_MASK;
				if (orig != data)
					FUNC16(SPLL_CNTL_MODE, data);
			}
		}
	} else {
		if (orig != data)
			FUNC18(PCIE_LC_CNTL, data);
	}

	orig = data = FUNC13(PCIE_CNTL2);
	data |= SLV_MEM_LS_EN | MST_MEM_LS_EN | REPLAY_MEM_LS_EN;
	if (orig != data)
		FUNC17(PCIE_CNTL2, data);

	if (!disable_l0s) {
		data = FUNC14(PCIE_LC_N_FTS_CNTL);
		if((data & LC_N_FTS_MASK) == LC_N_FTS_MASK) {
			data = FUNC13(PCIE_LC_STATUS1);
			if ((data & LC_REVERSE_XMIT) && (data & LC_REVERSE_RCVR)) {
				orig = data = FUNC14(PCIE_LC_CNTL);
				data &= ~LC_L0S_INACTIVITY_MASK;
				if (orig != data)
					FUNC18(PCIE_LC_CNTL, data);
			}
		}
	}
}