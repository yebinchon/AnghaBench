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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct pp_hwmgr {int /*<<< orphan*/ * device; int /*<<< orphan*/  smu_version; } ;
struct cgs_firmware_info {int image_size; int /*<<< orphan*/  ucode_start_address; scalar_t__ kptr; int /*<<< orphan*/  version; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  CGS_IND_REG__SMC ; 
 int EINVAL ; 
 int ICELAND_SMC_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct pp_hwmgr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RCU_UC_EVENTS ; 
 int /*<<< orphan*/  SMC_IND ; 
 int /*<<< orphan*/  UCODE_ID_SMU ; 
 int /*<<< orphan*/  boot_seq_done ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct cgs_firmware_info*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC5 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC6 (struct pp_hwmgr*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ixSMC_SYSCON_MISC_CNTL ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct pp_hwmgr *hwmgr)
{
	uint32_t val;
	struct cgs_firmware_info info = {0};

	if (hwmgr == NULL || hwmgr->device == NULL)
		return -EINVAL;

	/* load SMC firmware */
	FUNC1(hwmgr->device,
		FUNC8(UCODE_ID_SMU), &info);

	if (info.image_size & 3) {
		FUNC7("[ powerplay ] SMC ucode is not 4 bytes aligned\n");
		return -EINVAL;
	}

	if (info.image_size > ICELAND_SMC_SIZE) {
		FUNC7("[ powerplay ] SMC address is beyond the SMC RAM area\n");
		return -EINVAL;
	}
	hwmgr->smu_version = info.version;
	/* wait for smc boot up */
	FUNC0(hwmgr, SMC_IND,
					 RCU_UC_EVENTS, boot_seq_done, 0);

	/* clear firmware interrupt enable flag */
	val = FUNC2(hwmgr->device, CGS_IND_REG__SMC,
				    ixSMC_SYSCON_MISC_CNTL);
	FUNC3(hwmgr->device, CGS_IND_REG__SMC,
			       ixSMC_SYSCON_MISC_CNTL, val | 1);

	/* stop smc clock */
	FUNC5(hwmgr);

	/* reset smc */
	FUNC4(hwmgr);
	FUNC6(hwmgr, info.image_size,
				(uint8_t *)info.kptr, ICELAND_SMC_SIZE,
				info.ucode_start_address);

	return 0;
}