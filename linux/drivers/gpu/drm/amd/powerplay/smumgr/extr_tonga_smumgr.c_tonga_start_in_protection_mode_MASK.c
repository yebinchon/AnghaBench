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
struct pp_hwmgr {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUTO_START ; 
 int /*<<< orphan*/  CGS_IND_REG__SMC ; 
 int EINVAL ; 
 int /*<<< orphan*/  FIRMWARE_FLAGS ; 
 int /*<<< orphan*/  INTERRUPTS_ENABLED ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pp_hwmgr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pp_hwmgr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RCU_UC_EVENTS ; 
 int /*<<< orphan*/  SMC_IND ; 
 int /*<<< orphan*/  SMC_SYSCON_CLOCK_CNTL_0 ; 
 int /*<<< orphan*/  SMC_SYSCON_RESET_CNTL ; 
 int /*<<< orphan*/  SMU_DONE ; 
 int /*<<< orphan*/  SMU_INPUT_DATA ; 
 int /*<<< orphan*/  SMU_PASS ; 
 int /*<<< orphan*/  SMU_STATUS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ck_disable ; 
 int /*<<< orphan*/  ixFIRMWARE_FLAGS ; 
 int /*<<< orphan*/  ixSMU_STATUS ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  rst_reg ; 
 int /*<<< orphan*/  FUNC6 (struct pp_hwmgr*) ; 
 int FUNC7 (struct pp_hwmgr*) ; 

__attribute__((used)) static int FUNC8(struct pp_hwmgr *hwmgr)
{
	int result;

	/* Assert reset */
	FUNC3(hwmgr->device, CGS_IND_REG__SMC,
		SMC_SYSCON_RESET_CNTL, rst_reg, 1);

	result = FUNC7(hwmgr);
	if (result)
		return result;

	/* Clear status */
	FUNC4(hwmgr->device, CGS_IND_REG__SMC,
		ixSMU_STATUS, 0);

	/* Enable clock */
	FUNC3(hwmgr->device, CGS_IND_REG__SMC,
		SMC_SYSCON_CLOCK_CNTL_0, ck_disable, 0);

	/* De-assert reset */
	FUNC3(hwmgr->device, CGS_IND_REG__SMC,
		SMC_SYSCON_RESET_CNTL, rst_reg, 0);

	/* Set SMU Auto Start */
	FUNC3(hwmgr->device, CGS_IND_REG__SMC,
		SMU_INPUT_DATA, AUTO_START, 1);

	/* Clear firmware interrupt enable flag */
	FUNC4(hwmgr->device, CGS_IND_REG__SMC,
		ixFIRMWARE_FLAGS, 0);

	FUNC1(hwmgr, SMC_IND,
		RCU_UC_EVENTS, INTERRUPTS_ENABLED, 1);

	/**
	 * Call Test SMU message with 0x20000 offset to trigger SMU start
	 */
	FUNC6(hwmgr);

	/* Wait for done bit to be set */
	FUNC2(hwmgr, SMC_IND,
		SMU_STATUS, SMU_DONE, 0);

	/* Check pass/failed indicator */
	if (1 != FUNC0(hwmgr->device,
				CGS_IND_REG__SMC, SMU_STATUS, SMU_PASS)) {
		FUNC5("SMU Firmware start failed\n");
		return -EINVAL;
	}

	/* Wait for firmware to initialize */
	FUNC1(hwmgr, SMC_IND,
		FIRMWARE_FLAGS, INTERRUPTS_ENABLED, 1);

	return 0;
}