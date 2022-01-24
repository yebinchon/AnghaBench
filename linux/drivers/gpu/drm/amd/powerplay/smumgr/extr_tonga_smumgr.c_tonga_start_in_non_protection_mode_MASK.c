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
 int /*<<< orphan*/  CGS_IND_REG__SMC ; 
 int /*<<< orphan*/  FIRMWARE_FLAGS ; 
 int /*<<< orphan*/  INTERRUPTS_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (struct pp_hwmgr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pp_hwmgr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RCU_UC_EVENTS ; 
 int /*<<< orphan*/  SMC_IND ; 
 int /*<<< orphan*/  SMC_SYSCON_CLOCK_CNTL_0 ; 
 int /*<<< orphan*/  SMC_SYSCON_RESET_CNTL ; 
 int /*<<< orphan*/  boot_seq_done ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ck_disable ; 
 int /*<<< orphan*/  ixFIRMWARE_FLAGS ; 
 int /*<<< orphan*/  rst_reg ; 
 int /*<<< orphan*/  FUNC4 (struct pp_hwmgr*) ; 
 int FUNC5 (struct pp_hwmgr*) ; 

__attribute__((used)) static int FUNC6(struct pp_hwmgr *hwmgr)
{
	int result = 0;

	/* wait for smc boot up */
	FUNC1(hwmgr, SMC_IND,
		RCU_UC_EVENTS, boot_seq_done, 0);

	/*Clear firmware interrupt enable flag*/
	FUNC3(hwmgr->device, CGS_IND_REG__SMC,
		ixFIRMWARE_FLAGS, 0);


	FUNC2(hwmgr->device, CGS_IND_REG__SMC,
		SMC_SYSCON_RESET_CNTL, rst_reg, 1);

	result = FUNC5(hwmgr);

	if (result != 0)
		return result;

	/* Set smc instruct start point at 0x0 */
	FUNC4(hwmgr);


	FUNC2(hwmgr->device, CGS_IND_REG__SMC,
		SMC_SYSCON_CLOCK_CNTL_0, ck_disable, 0);

	/*De-assert reset*/
	FUNC2(hwmgr->device, CGS_IND_REG__SMC,
		SMC_SYSCON_RESET_CNTL, rst_reg, 0);

	/* Wait for firmware to initialize */
	FUNC0(hwmgr, SMC_IND,
		FIRMWARE_FLAGS, INTERRUPTS_ENABLED, 1);

	return result;
}