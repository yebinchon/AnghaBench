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
struct radeon_device {int flags; int family; } ;

/* Variables and functions */
#define  CHIP_ARUBA 136 
 int CHIP_BARTS ; 
#define  CHIP_CEDAR 135 
#define  CHIP_CYPRESS 134 
#define  CHIP_HEMLOCK 133 
#define  CHIP_JUNIPER 132 
#define  CHIP_PALM 131 
#define  CHIP_REDWOOD 130 
#define  CHIP_SUMO 129 
#define  CHIP_SUMO2 128 
 int FUNC0 (int) ; 
 int LC_DYN_LANES_PWR_STATE_MASK ; 
 int FUNC1 (int) ; 
 int LC_L0S_INACTIVITY_MASK ; 
 int FUNC2 (int) ; 
 int LC_L1_INACTIVITY_MASK ; 
 int LC_PMI_TO_L1_DIS ; 
 int FUNC3 (int) ; 
 int LS2_EXIT_TIME_MASK ; 
 int MULTI_PIF ; 
 int /*<<< orphan*/  PB0_PIF_CNTL ; 
 int /*<<< orphan*/  PB0_PIF_PAIRING ; 
 int /*<<< orphan*/  PB0_PIF_PWRDOWN_0 ; 
 int /*<<< orphan*/  PB0_PIF_PWRDOWN_1 ; 
 int /*<<< orphan*/  PB1_PIF_CNTL ; 
 int /*<<< orphan*/  PB1_PIF_PAIRING ; 
 int /*<<< orphan*/  PB1_PIF_PWRDOWN_0 ; 
 int /*<<< orphan*/  PB1_PIF_PWRDOWN_1 ; 
 int /*<<< orphan*/  PCIE_LC_CNTL ; 
 int /*<<< orphan*/  PCIE_LC_LINK_WIDTH_CNTL ; 
 int FUNC4 (int) ; 
 int PLL_POWER_STATE_IN_OFF_0_MASK ; 
 int FUNC5 (int) ; 
 int PLL_POWER_STATE_IN_OFF_1_MASK ; 
 int FUNC6 (int) ; 
 int PLL_POWER_STATE_IN_TXS2_0_MASK ; 
 int FUNC7 (int) ; 
 int PLL_POWER_STATE_IN_TXS2_1_MASK ; 
 int FUNC8 (int) ; 
 int PLL_RAMP_UP_TIME_0_MASK ; 
 int FUNC9 (int) ; 
 int PLL_RAMP_UP_TIME_1_MASK ; 
 int RADEON_IS_IGP ; 
 int RADEON_IS_PCIE ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ radeon_aspm ; 

void FUNC16(struct radeon_device *rdev)
{
	u32 data, orig;
	u32 pcie_lc_cntl, pcie_lc_cntl_old;
	bool disable_l0s, disable_l1 = false, disable_plloff_in_l1 = false;
	/* fusion_platform = true
	 * if the system is a fusion system
	 * (APU or DGPU in a fusion system).
	 * todo: check if the system is a fusion platform.
	 */
	bool fusion_platform = false;

	if (radeon_aspm == 0)
		return;

	if (!(rdev->flags & RADEON_IS_PCIE))
		return;

	switch (rdev->family) {
	case CHIP_CYPRESS:
	case CHIP_HEMLOCK:
	case CHIP_JUNIPER:
	case CHIP_REDWOOD:
	case CHIP_CEDAR:
	case CHIP_SUMO:
	case CHIP_SUMO2:
	case CHIP_PALM:
	case CHIP_ARUBA:
		disable_l0s = true;
		break;
	default:
		disable_l0s = false;
		break;
	}

	if (rdev->flags & RADEON_IS_IGP)
		fusion_platform = true; /* XXX also dGPUs in a fusion system */

	data = orig = FUNC11(PB0_PIF_PAIRING);
	if (fusion_platform)
		data &= ~MULTI_PIF;
	else
		data |= MULTI_PIF;
	if (data != orig)
		FUNC14(PB0_PIF_PAIRING, data);

	data = orig = FUNC12(PB1_PIF_PAIRING);
	if (fusion_platform)
		data &= ~MULTI_PIF;
	else
		data |= MULTI_PIF;
	if (data != orig)
		FUNC15(PB1_PIF_PAIRING, data);

	pcie_lc_cntl = pcie_lc_cntl_old = FUNC10(PCIE_LC_CNTL);
	pcie_lc_cntl &= ~(LC_L0S_INACTIVITY_MASK | LC_L1_INACTIVITY_MASK);
	if (!disable_l0s) {
		if (rdev->family >= CHIP_BARTS)
			pcie_lc_cntl |= FUNC1(7);
		else
			pcie_lc_cntl |= FUNC1(3);
	}

	if (!disable_l1) {
		if (rdev->family >= CHIP_BARTS)
			pcie_lc_cntl |= FUNC2(7);
		else
			pcie_lc_cntl |= FUNC2(8);

		if (!disable_plloff_in_l1) {
			data = orig = FUNC11(PB0_PIF_PWRDOWN_0);
			data &= ~(PLL_POWER_STATE_IN_OFF_0_MASK | PLL_POWER_STATE_IN_TXS2_0_MASK);
			data |= FUNC4(7) | FUNC6(7);
			if (data != orig)
				FUNC14(PB0_PIF_PWRDOWN_0, data);

			data = orig = FUNC11(PB0_PIF_PWRDOWN_1);
			data &= ~(PLL_POWER_STATE_IN_OFF_1_MASK | PLL_POWER_STATE_IN_TXS2_1_MASK);
			data |= FUNC5(7) | FUNC7(7);
			if (data != orig)
				FUNC14(PB0_PIF_PWRDOWN_1, data);

			data = orig = FUNC12(PB1_PIF_PWRDOWN_0);
			data &= ~(PLL_POWER_STATE_IN_OFF_0_MASK | PLL_POWER_STATE_IN_TXS2_0_MASK);
			data |= FUNC4(7) | FUNC6(7);
			if (data != orig)
				FUNC15(PB1_PIF_PWRDOWN_0, data);

			data = orig = FUNC12(PB1_PIF_PWRDOWN_1);
			data &= ~(PLL_POWER_STATE_IN_OFF_1_MASK | PLL_POWER_STATE_IN_TXS2_1_MASK);
			data |= FUNC5(7) | FUNC7(7);
			if (data != orig)
				FUNC15(PB1_PIF_PWRDOWN_1, data);

			if (rdev->family >= CHIP_BARTS) {
				data = orig = FUNC11(PB0_PIF_PWRDOWN_0);
				data &= ~PLL_RAMP_UP_TIME_0_MASK;
				data |= FUNC8(4);
				if (data != orig)
					FUNC14(PB0_PIF_PWRDOWN_0, data);

				data = orig = FUNC11(PB0_PIF_PWRDOWN_1);
				data &= ~PLL_RAMP_UP_TIME_1_MASK;
				data |= FUNC9(4);
				if (data != orig)
					FUNC14(PB0_PIF_PWRDOWN_1, data);

				data = orig = FUNC12(PB1_PIF_PWRDOWN_0);
				data &= ~PLL_RAMP_UP_TIME_0_MASK;
				data |= FUNC8(4);
				if (data != orig)
					FUNC15(PB1_PIF_PWRDOWN_0, data);

				data = orig = FUNC12(PB1_PIF_PWRDOWN_1);
				data &= ~PLL_RAMP_UP_TIME_1_MASK;
				data |= FUNC9(4);
				if (data != orig)
					FUNC15(PB1_PIF_PWRDOWN_1, data);
			}

			data = orig = FUNC10(PCIE_LC_LINK_WIDTH_CNTL);
			data &= ~LC_DYN_LANES_PWR_STATE_MASK;
			data |= FUNC0(3);
			if (data != orig)
				FUNC13(PCIE_LC_LINK_WIDTH_CNTL, data);

			if (rdev->family >= CHIP_BARTS) {
				data = orig = FUNC11(PB0_PIF_CNTL);
				data &= ~LS2_EXIT_TIME_MASK;
				data |= FUNC3(1);
				if (data != orig)
					FUNC14(PB0_PIF_CNTL, data);

				data = orig = FUNC12(PB1_PIF_CNTL);
				data &= ~LS2_EXIT_TIME_MASK;
				data |= FUNC3(1);
				if (data != orig)
					FUNC15(PB1_PIF_CNTL, data);
			}
		}
	}

	/* evergreen parts only */
	if (rdev->family < CHIP_BARTS)
		pcie_lc_cntl |= LC_PMI_TO_L1_DIS;

	if (pcie_lc_cntl != pcie_lc_cntl_old)
		FUNC13(PCIE_LC_CNTL, pcie_lc_cntl);
}