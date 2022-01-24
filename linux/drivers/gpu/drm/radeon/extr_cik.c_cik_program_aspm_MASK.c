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
struct radeon_device {int flags; TYPE_1__* pdev; } ;
struct pci_dev {int dummy; } ;
struct TYPE_4__ {struct pci_dev* self; } ;
struct TYPE_3__ {TYPE_2__* bus; } ;

/* Variables and functions */
 int BCLK_AS_XCLK ; 
 int /*<<< orphan*/  CG_CLKPIN_CNTL ; 
 int /*<<< orphan*/  CG_CLKPIN_CNTL_2 ; 
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
 int /*<<< orphan*/  MISC_CLK_CTRL ; 
 int /*<<< orphan*/  MPLL_BYPASSCLK_SEL ; 
 int FUNC6 (int) ; 
 int MPLL_CLKOUT_SEL_MASK ; 
 int MST_MEM_LS_EN ; 
 int /*<<< orphan*/  PB0_PIF_PWRDOWN_0 ; 
 int /*<<< orphan*/  PB0_PIF_PWRDOWN_1 ; 
 int /*<<< orphan*/  PB1_PIF_PWRDOWN_0 ; 
 int /*<<< orphan*/  PB1_PIF_PWRDOWN_1 ; 
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
 int FUNC7 (int) ; 
 int PLL_POWER_STATE_IN_OFF_0_MASK ; 
 int FUNC8 (int) ; 
 int PLL_POWER_STATE_IN_OFF_1_MASK ; 
 int FUNC9 (int) ; 
 int PLL_POWER_STATE_IN_TXS2_0_MASK ; 
 int FUNC10 (int) ; 
 int PLL_POWER_STATE_IN_TXS2_1_MASK ; 
 int P_IGNORE_EDB_ERR ; 
 int RADEON_IS_IGP ; 
 int RADEON_IS_PCIE ; 
 int REPLAY_MEM_LS_EN ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int SLV_MEM_LS_EN ; 
 int /*<<< orphan*/  THM_CLK_CNTL ; 
 int FUNC13 (int) ; 
 int TMON_CLK_SEL_MASK ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 int FUNC16 (int) ; 
 int ZCLK_SEL_MASK ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC18 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ radeon_aspm ; 

__attribute__((used)) static void FUNC19(struct radeon_device *rdev)
{
	u32 data, orig;
	bool disable_l0s = false, disable_l1 = false, disable_plloff_in_l1 = false;
	bool disable_clkreq = false;

	if (radeon_aspm == 0)
		return;

	/* XXX double check IGPs */
	if (rdev->flags & RADEON_IS_IGP)
		return;

	if (!(rdev->flags & RADEON_IS_PCIE))
		return;

	orig = data = FUNC11(PCIE_LC_N_FTS_CNTL);
	data &= ~LC_XMIT_N_FTS_MASK;
	data |= FUNC5(0x24) | LC_XMIT_N_FTS_OVERRIDE_EN;
	if (orig != data)
		FUNC14(PCIE_LC_N_FTS_CNTL, data);

	orig = data = FUNC11(PCIE_LC_CNTL3);
	data |= LC_GO_TO_RECOVERY;
	if (orig != data)
		FUNC14(PCIE_LC_CNTL3, data);

	orig = data = FUNC11(PCIE_P_CNTL);
	data |= P_IGNORE_EDB_ERR;
	if (orig != data)
		FUNC14(PCIE_P_CNTL, data);

	orig = data = FUNC11(PCIE_LC_CNTL);
	data &= ~(LC_L0S_INACTIVITY_MASK | LC_L1_INACTIVITY_MASK);
	data |= LC_PMI_TO_L1_DIS;
	if (!disable_l0s)
		data |= FUNC3(7);

	if (!disable_l1) {
		data |= FUNC4(7);
		data &= ~LC_PMI_TO_L1_DIS;
		if (orig != data)
			FUNC14(PCIE_LC_CNTL, data);

		if (!disable_plloff_in_l1) {
			bool clk_req_support;

			orig = data = FUNC11(PB0_PIF_PWRDOWN_0);
			data &= ~(PLL_POWER_STATE_IN_OFF_0_MASK | PLL_POWER_STATE_IN_TXS2_0_MASK);
			data |= FUNC7(7) | FUNC9(7);
			if (orig != data)
				FUNC14(PB0_PIF_PWRDOWN_0, data);

			orig = data = FUNC11(PB0_PIF_PWRDOWN_1);
			data &= ~(PLL_POWER_STATE_IN_OFF_1_MASK | PLL_POWER_STATE_IN_TXS2_1_MASK);
			data |= FUNC8(7) | FUNC10(7);
			if (orig != data)
				FUNC14(PB0_PIF_PWRDOWN_1, data);

			orig = data = FUNC11(PB1_PIF_PWRDOWN_0);
			data &= ~(PLL_POWER_STATE_IN_OFF_0_MASK | PLL_POWER_STATE_IN_TXS2_0_MASK);
			data |= FUNC7(7) | FUNC9(7);
			if (orig != data)
				FUNC14(PB1_PIF_PWRDOWN_0, data);

			orig = data = FUNC11(PB1_PIF_PWRDOWN_1);
			data &= ~(PLL_POWER_STATE_IN_OFF_1_MASK | PLL_POWER_STATE_IN_TXS2_1_MASK);
			data |= FUNC8(7) | FUNC10(7);
			if (orig != data)
				FUNC14(PB1_PIF_PWRDOWN_1, data);

			orig = data = FUNC11(PCIE_LC_LINK_WIDTH_CNTL);
			data &= ~LC_DYN_LANES_PWR_STATE_MASK;
			data |= FUNC2(3);
			if (orig != data)
				FUNC14(PCIE_LC_LINK_WIDTH_CNTL, data);

			if (!disable_clkreq &&
			    !FUNC17(rdev->pdev->bus)) {
				struct pci_dev *root = rdev->pdev->bus->self;
				u32 lnkcap;

				clk_req_support = false;
				FUNC18(root, PCI_EXP_LNKCAP, &lnkcap);
				if (lnkcap & PCI_EXP_LNKCAP_CLKPM)
					clk_req_support = true;
			} else {
				clk_req_support = false;
			}

			if (clk_req_support) {
				orig = data = FUNC11(PCIE_LC_CNTL2);
				data |= LC_ALLOW_PDWN_IN_L1 | LC_ALLOW_PDWN_IN_L23;
				if (orig != data)
					FUNC14(PCIE_LC_CNTL2, data);

				orig = data = FUNC12(THM_CLK_CNTL);
				data &= ~(CMON_CLK_SEL_MASK | TMON_CLK_SEL_MASK);
				data |= FUNC0(1) | FUNC13(1);
				if (orig != data)
					FUNC15(THM_CLK_CNTL, data);

				orig = data = FUNC12(MISC_CLK_CTRL);
				data &= ~(DEEP_SLEEP_CLK_SEL_MASK | ZCLK_SEL_MASK);
				data |= FUNC1(1) | FUNC16(1);
				if (orig != data)
					FUNC15(MISC_CLK_CTRL, data);

				orig = data = FUNC12(CG_CLKPIN_CNTL);
				data &= ~BCLK_AS_XCLK;
				if (orig != data)
					FUNC15(CG_CLKPIN_CNTL, data);

				orig = data = FUNC12(CG_CLKPIN_CNTL_2);
				data &= ~FORCE_BIF_REFCLK_EN;
				if (orig != data)
					FUNC15(CG_CLKPIN_CNTL_2, data);

				orig = data = FUNC12(MPLL_BYPASSCLK_SEL);
				data &= ~MPLL_CLKOUT_SEL_MASK;
				data |= FUNC6(4);
				if (orig != data)
					FUNC15(MPLL_BYPASSCLK_SEL, data);
			}
		}
	} else {
		if (orig != data)
			FUNC14(PCIE_LC_CNTL, data);
	}

	orig = data = FUNC11(PCIE_CNTL2);
	data |= SLV_MEM_LS_EN | MST_MEM_LS_EN | REPLAY_MEM_LS_EN;
	if (orig != data)
		FUNC14(PCIE_CNTL2, data);

	if (!disable_l0s) {
		data = FUNC11(PCIE_LC_N_FTS_CNTL);
		if((data & LC_N_FTS_MASK) == LC_N_FTS_MASK) {
			data = FUNC11(PCIE_LC_STATUS1);
			if ((data & LC_REVERSE_XMIT) && (data & LC_REVERSE_RCVR)) {
				orig = data = FUNC11(PCIE_LC_CNTL);
				data &= ~LC_L0S_INACTIVITY_MASK;
				if (orig != data)
					FUNC14(PCIE_LC_CNTL, data);
			}
		}
	}
}