#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pp_hwmgr {struct iceland_smumgr* smu_backend; } ;
struct TYPE_2__ {int /*<<< orphan*/  soft_regs_start; } ;
struct iceland_smumgr {TYPE_1__ smu7_data; } ;

/* Variables and functions */
 scalar_t__ SMU71_FIRMWARE_HEADER_LOCATION ; 
 int /*<<< orphan*/  SMU71_Firmware_Header ; 
 int /*<<< orphan*/  SoftRegisters ; 
 int /*<<< orphan*/  FUNC0 (struct pp_hwmgr*) ; 
 int FUNC1 (struct pp_hwmgr*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC4 (struct pp_hwmgr*,scalar_t__,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (struct pp_hwmgr*) ; 

__attribute__((used)) static int FUNC6(struct pp_hwmgr *hwmgr)
{
	struct iceland_smumgr *priv = hwmgr->smu_backend;
	int result;

	if (!FUNC3(hwmgr)) {
		result = FUNC1(hwmgr);
		if (result)
			return result;

		FUNC0(hwmgr);
	}

	/* Setup SoftRegsStart here to visit the register UcodeLoadStatus
	 * to check fw loading state
	 */
	FUNC4(hwmgr,
			SMU71_FIRMWARE_HEADER_LOCATION +
			FUNC2(SMU71_Firmware_Header, SoftRegisters),
			&(priv->smu7_data.soft_regs_start), 0x40000);

	result = FUNC5(hwmgr);

	return result;
}