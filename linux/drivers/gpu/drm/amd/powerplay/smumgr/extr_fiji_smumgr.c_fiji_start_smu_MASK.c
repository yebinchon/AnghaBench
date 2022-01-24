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
struct pp_hwmgr {int avfs_supported; int /*<<< orphan*/  device; scalar_t__ not_vf; scalar_t__ smu_backend; } ;
struct TYPE_2__ {int /*<<< orphan*/  soft_regs_start; } ;
struct fiji_smumgr {TYPE_1__ smu7_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CGS_IND_REG__SMC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMU73_Firmware_Header ; 
 scalar_t__ SMU7_FIRMWARE_HEADER_LOCATION ; 
 int /*<<< orphan*/  SMU_FIRMWARE ; 
 int /*<<< orphan*/  SMU_MODE ; 
 int /*<<< orphan*/  SoftRegisters ; 
 scalar_t__ FUNC1 (struct pp_hwmgr*) ; 
 int FUNC2 (struct pp_hwmgr*) ; 
 int FUNC3 (struct pp_hwmgr*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC6 (struct pp_hwmgr*,scalar_t__,int /*<<< orphan*/ *,int) ; 
 int FUNC7 (struct pp_hwmgr*) ; 

__attribute__((used)) static int FUNC8(struct pp_hwmgr *hwmgr)
{
	int result = 0;
	struct fiji_smumgr *priv = (struct fiji_smumgr *)(hwmgr->smu_backend);

	/* Only start SMC if SMC RAM is not running */
	if (!FUNC5(hwmgr) && hwmgr->not_vf) {
		/* Check if SMU is running in protected mode */
		if (0 == FUNC0(hwmgr->device,
				CGS_IND_REG__SMC,
				SMU_FIRMWARE, SMU_MODE)) {
			result = FUNC2(hwmgr);
			if (result)
				return result;
		} else {
			result = FUNC3(hwmgr);
			if (result)
				return result;
		}
		if (FUNC1(hwmgr))
			hwmgr->avfs_supported = false;
	}

	/* Setup SoftRegsStart here for register lookup in case
	 * DummyBackEnd is used and ProcessFirmwareHeader is not executed
	 */
	FUNC6(hwmgr,
			SMU7_FIRMWARE_HEADER_LOCATION +
			FUNC4(SMU73_Firmware_Header, SoftRegisters),
			&(priv->smu7_data.soft_regs_start), 0x40000);

	result = FUNC7(hwmgr);

	return result;
}