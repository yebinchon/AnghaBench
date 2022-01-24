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
typedef  int uint32_t ;
struct pp_hwmgr {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  CGS_IND_REG__DIDT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int DB_Enable_MASK ; 
 int DB_Enable_SHIFT ; 
 int /*<<< orphan*/  DIDT_CTRL_EN ; 
 int /*<<< orphan*/  DIDT_DBR_CTRL0 ; 
 int /*<<< orphan*/  DIDT_DBR_EDC_CTRL ; 
 int /*<<< orphan*/  DIDT_DB_CTRL0 ; 
 int /*<<< orphan*/  DIDT_DB_EDC_CTRL ; 
 int /*<<< orphan*/  DIDT_SQ_CTRL0 ; 
 int /*<<< orphan*/  DIDT_SQ_EDC_CTRL ; 
 int /*<<< orphan*/  DIDT_TCP_CTRL0 ; 
 int /*<<< orphan*/  DIDT_TCP_EDC_CTRL ; 
 int /*<<< orphan*/  DIDT_TD_CTRL0 ; 
 int /*<<< orphan*/  DIDT_TD_EDC_CTRL ; 
 int /*<<< orphan*/  EDC_EN ; 
 int /*<<< orphan*/  EDC_SW_RST ; 
 int /*<<< orphan*/  PHM_PlatformCaps_DBRRamping ; 
 int /*<<< orphan*/  PHM_PlatformCaps_DBRamping ; 
 int /*<<< orphan*/  PHM_PlatformCaps_DiDtEDCEnable ; 
 int /*<<< orphan*/  PHM_PlatformCaps_SQRamping ; 
 int /*<<< orphan*/  PHM_PlatformCaps_TCPRamping ; 
 int /*<<< orphan*/  PHM_PlatformCaps_TDRamping ; 
 int /*<<< orphan*/  PPSMC_MSG_ConfigureGfxDidt ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int SQ_Enable_MASK ; 
 int SQ_Enable_SHIFT ; 
 int SQ_IR_MASK ; 
 int TCP_Enable_MASK ; 
 int TCP_Enable_SHIFT ; 
 int TCP_IR_MASK ; 
 int TD_Enable_MASK ; 
 int TD_Enable_SHIFT ; 
 int TD_PCC_MASK ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ixDIDT_DBR_EDC_CTRL ; 
 int /*<<< orphan*/  ixDIDT_DB_EDC_CTRL ; 
 int /*<<< orphan*/  ixDIDT_SQ_EDC_CTRL ; 
 int /*<<< orphan*/  ixDIDT_TCP_EDC_CTRL ; 
 int /*<<< orphan*/  ixDIDT_TD_EDC_CTRL ; 
 int /*<<< orphan*/  FUNC5 (struct pp_hwmgr*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct pp_hwmgr *hwmgr, const bool enable)
{
	uint32_t data;
	uint32_t en = (enable ? 1 : 0);
	uint32_t didt_block_info = SQ_IR_MASK | TCP_IR_MASK | TD_PCC_MASK;

	if (FUNC1(PHM_PlatformCaps_SQRamping)) {
		FUNC0(hwmgr->device, CGS_IND_REG__DIDT,
				     DIDT_SQ_CTRL0, DIDT_CTRL_EN, en);
		didt_block_info &= ~SQ_Enable_MASK;
		didt_block_info |= en << SQ_Enable_SHIFT;
	}

	if (FUNC1(PHM_PlatformCaps_DBRamping)) {
		FUNC0(hwmgr->device, CGS_IND_REG__DIDT,
				     DIDT_DB_CTRL0, DIDT_CTRL_EN, en);
		didt_block_info &= ~DB_Enable_MASK;
		didt_block_info |= en << DB_Enable_SHIFT;
	}

	if (FUNC1(PHM_PlatformCaps_TDRamping)) {
		FUNC0(hwmgr->device, CGS_IND_REG__DIDT,
				     DIDT_TD_CTRL0, DIDT_CTRL_EN, en);
		didt_block_info &= ~TD_Enable_MASK;
		didt_block_info |= en << TD_Enable_SHIFT;
	}

	if (FUNC1(PHM_PlatformCaps_TCPRamping)) {
		FUNC0(hwmgr->device, CGS_IND_REG__DIDT,
				     DIDT_TCP_CTRL0, DIDT_CTRL_EN, en);
		didt_block_info &= ~TCP_Enable_MASK;
		didt_block_info |= en << TCP_Enable_SHIFT;
	}

	if (FUNC1(PHM_PlatformCaps_DBRRamping)) {
		FUNC0(hwmgr->device, CGS_IND_REG__DIDT,
				     DIDT_DBR_CTRL0, DIDT_CTRL_EN, en);
	}

	if (FUNC1(PHM_PlatformCaps_DiDtEDCEnable)) {
		if (FUNC1(PHM_PlatformCaps_SQRamping)) {
			data = FUNC3(hwmgr->device, CGS_IND_REG__DIDT, ixDIDT_SQ_EDC_CTRL);
			data = FUNC2(data, DIDT_SQ_EDC_CTRL, EDC_EN, en);
			data = FUNC2(data, DIDT_SQ_EDC_CTRL, EDC_SW_RST, ~en);
			FUNC4(hwmgr->device, CGS_IND_REG__DIDT, ixDIDT_SQ_EDC_CTRL, data);
		}

		if (FUNC1(PHM_PlatformCaps_DBRamping)) {
			data = FUNC3(hwmgr->device, CGS_IND_REG__DIDT, ixDIDT_DB_EDC_CTRL);
			data = FUNC2(data, DIDT_DB_EDC_CTRL, EDC_EN, en);
			data = FUNC2(data, DIDT_DB_EDC_CTRL, EDC_SW_RST, ~en);
			FUNC4(hwmgr->device, CGS_IND_REG__DIDT, ixDIDT_DB_EDC_CTRL, data);
		}

		if (FUNC1(PHM_PlatformCaps_TDRamping)) {
			data = FUNC3(hwmgr->device, CGS_IND_REG__DIDT, ixDIDT_TD_EDC_CTRL);
			data = FUNC2(data, DIDT_TD_EDC_CTRL, EDC_EN, en);
			data = FUNC2(data, DIDT_TD_EDC_CTRL, EDC_SW_RST, ~en);
			FUNC4(hwmgr->device, CGS_IND_REG__DIDT, ixDIDT_TD_EDC_CTRL, data);
		}

		if (FUNC1(PHM_PlatformCaps_TCPRamping)) {
			data = FUNC3(hwmgr->device, CGS_IND_REG__DIDT, ixDIDT_TCP_EDC_CTRL);
			data = FUNC2(data, DIDT_TCP_EDC_CTRL, EDC_EN, en);
			data = FUNC2(data, DIDT_TCP_EDC_CTRL, EDC_SW_RST, ~en);
			FUNC4(hwmgr->device, CGS_IND_REG__DIDT, ixDIDT_TCP_EDC_CTRL, data);
		}

		if (FUNC1(PHM_PlatformCaps_DBRRamping)) {
			data = FUNC3(hwmgr->device, CGS_IND_REG__DIDT, ixDIDT_DBR_EDC_CTRL);
			data = FUNC2(data, DIDT_DBR_EDC_CTRL, EDC_EN, en);
			data = FUNC2(data, DIDT_DBR_EDC_CTRL, EDC_SW_RST, ~en);
			FUNC4(hwmgr->device, CGS_IND_REG__DIDT, ixDIDT_DBR_EDC_CTRL, data);
		}
	}

	/* For Vega10, SMC does not support any mask yet. */
	if (enable)
		FUNC5(hwmgr, PPSMC_MSG_ConfigureGfxDidt, didt_block_info);

}