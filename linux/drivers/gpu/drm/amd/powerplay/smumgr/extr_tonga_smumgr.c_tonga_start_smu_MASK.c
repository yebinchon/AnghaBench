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
struct TYPE_2__ {int /*<<< orphan*/  soft_regs_start; } ;
struct tonga_smumgr {TYPE_1__ smu7_data; } ;
struct pp_hwmgr {int /*<<< orphan*/  device; scalar_t__ not_vf; struct tonga_smumgr* smu_backend; } ;

/* Variables and functions */
 int /*<<< orphan*/  CGS_IND_REG__SMC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ SMU72_FIRMWARE_HEADER_LOCATION ; 
 int /*<<< orphan*/  SMU72_Firmware_Header ; 
 int /*<<< orphan*/  SMU_FIRMWARE ; 
 int /*<<< orphan*/  SMU_MODE ; 
 int /*<<< orphan*/  SoftRegisters ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC3 (struct pp_hwmgr*,scalar_t__,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (struct pp_hwmgr*) ; 
 int FUNC5 (struct pp_hwmgr*) ; 
 int FUNC6 (struct pp_hwmgr*) ; 

__attribute__((used)) static int FUNC7(struct pp_hwmgr *hwmgr)
{
	struct tonga_smumgr *priv = hwmgr->smu_backend;
	int result;

	/* Only start SMC if SMC RAM is not running */
	if (!FUNC2(hwmgr) && hwmgr->not_vf) {
		/*Check if SMU is running in protected mode*/
		if (0 == FUNC0(hwmgr->device, CGS_IND_REG__SMC,
					SMU_FIRMWARE, SMU_MODE)) {
			result = FUNC5(hwmgr);
			if (result)
				return result;
		} else {
			result = FUNC6(hwmgr);
			if (result)
				return result;
		}
	}

	/* Setup SoftRegsStart here to visit the register UcodeLoadStatus
	 * to check fw loading state
	 */
	FUNC3(hwmgr,
			SMU72_FIRMWARE_HEADER_LOCATION +
			FUNC1(SMU72_Firmware_Header, SoftRegisters),
			&(priv->smu7_data.soft_regs_start), 0x40000);

	result = FUNC4(hwmgr);

	return result;
}