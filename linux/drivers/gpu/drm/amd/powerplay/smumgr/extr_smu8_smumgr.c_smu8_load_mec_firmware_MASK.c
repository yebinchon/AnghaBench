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
struct smu8_smumgr {int dummy; } ;
struct pp_hwmgr {int /*<<< orphan*/ * device; struct smu8_smumgr* smu_backend; } ;
struct cgs_firmware_info {int /*<<< orphan*/  mc_addr; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATC ; 
 int /*<<< orphan*/  CACHE_POLICY ; 
 int /*<<< orphan*/  CGS_UCODE_ID_CP_MEC ; 
 int /*<<< orphan*/  CP_CPC_IC_BASE_CNTL ; 
 int /*<<< orphan*/  CP_CPC_IC_BASE_HI ; 
 int /*<<< orphan*/  CP_CPC_IC_BASE_LO ; 
 int /*<<< orphan*/  CP_MEC_CNTL ; 
 int EINVAL ; 
 int /*<<< orphan*/  IC_BASE_HI ; 
 int /*<<< orphan*/  IC_BASE_LO ; 
 int /*<<< orphan*/  MEC_ME1_HALT ; 
 int /*<<< orphan*/  MEC_ME2_HALT ; 
 int /*<<< orphan*/  MTYPE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  VMID ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct cgs_firmware_info*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmCP_CPC_IC_BASE_CNTL ; 
 int /*<<< orphan*/  mmCP_CPC_IC_BASE_HI ; 
 int /*<<< orphan*/  mmCP_CPC_IC_BASE_LO ; 
 int /*<<< orphan*/  mmCP_MEC_CNTL ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct pp_hwmgr *hwmgr)
{
	uint32_t reg_data;
	uint32_t tmp;
	int ret = 0;
	struct cgs_firmware_info info = {0};
	struct smu8_smumgr *smu8_smu;

	if (hwmgr == NULL || hwmgr->device == NULL)
		return -EINVAL;

	smu8_smu = hwmgr->smu_backend;
	ret = FUNC2(hwmgr->device,
						CGS_UCODE_ID_CP_MEC, &info);

	if (ret)
		return -EINVAL;

	/* Disable MEC parsing/prefetching */
	tmp = FUNC3(hwmgr->device,
					mmCP_MEC_CNTL);
	tmp = FUNC1(tmp, CP_MEC_CNTL, MEC_ME1_HALT, 1);
	tmp = FUNC1(tmp, CP_MEC_CNTL, MEC_ME2_HALT, 1);
	FUNC4(hwmgr->device, mmCP_MEC_CNTL, tmp);

	tmp = FUNC3(hwmgr->device,
					mmCP_CPC_IC_BASE_CNTL);

	tmp = FUNC1(tmp, CP_CPC_IC_BASE_CNTL, VMID, 0);
	tmp = FUNC1(tmp, CP_CPC_IC_BASE_CNTL, ATC, 0);
	tmp = FUNC1(tmp, CP_CPC_IC_BASE_CNTL, CACHE_POLICY, 0);
	tmp = FUNC1(tmp, CP_CPC_IC_BASE_CNTL, MTYPE, 1);
	FUNC4(hwmgr->device, mmCP_CPC_IC_BASE_CNTL, tmp);

	reg_data = FUNC5(info.mc_addr) &
			FUNC0(CP_CPC_IC_BASE_LO, IC_BASE_LO);
	FUNC4(hwmgr->device, mmCP_CPC_IC_BASE_LO, reg_data);

	reg_data = FUNC6(info.mc_addr) &
			FUNC0(CP_CPC_IC_BASE_HI, IC_BASE_HI);
	FUNC4(hwmgr->device, mmCP_CPC_IC_BASE_HI, reg_data);

	return 0;
}