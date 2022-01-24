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
typedef  int /*<<< orphan*/  uint32_t ;
struct smu7_smumgr {int security_hard_key; } ;
struct pp_hwmgr {int /*<<< orphan*/  smu_version; int /*<<< orphan*/  is_kicker; int /*<<< orphan*/  device; scalar_t__ smu_backend; } ;
struct cgs_firmware_info {scalar_t__ kptr; int /*<<< orphan*/  image_size; int /*<<< orphan*/  version; int /*<<< orphan*/  is_kicker; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  SMU7_SMC_SIZE ; 
 int /*<<< orphan*/  UCODE_ID_SMU ; 
 int /*<<< orphan*/  UCODE_ID_SMU_SK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cgs_firmware_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct pp_hwmgr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC3(struct pp_hwmgr *hwmgr)
{
	int result = 0;
	struct smu7_smumgr *smu_data = (struct smu7_smumgr *)(hwmgr->smu_backend);

	struct cgs_firmware_info info = {0};

	if (smu_data->security_hard_key == 1)
		FUNC0(hwmgr->device,
			FUNC1(UCODE_ID_SMU), &info);
	else
		FUNC0(hwmgr->device,
			FUNC1(UCODE_ID_SMU_SK), &info);

	hwmgr->is_kicker = info.is_kicker;
	hwmgr->smu_version = info.version;
	result = FUNC2(hwmgr, info.image_size, (uint32_t *)info.kptr, SMU7_SMC_SIZE);

	return result;
}