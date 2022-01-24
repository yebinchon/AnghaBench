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
struct pp_hwmgr {int /*<<< orphan*/  adev; } ;
struct pp_atom_ctrl__avfs_parameters {int /*<<< orphan*/  ucEnableApplyAVFS_CKS_OFF_Voltage; void* usPSM_Age_ComFactor; int /*<<< orphan*/  ucEnableGB_FUSE_TABLE_CKSON; int /*<<< orphan*/  ucEnableGB_FUSE_TABLE_CKSOFF; int /*<<< orphan*/  ucEnableGB_VDROOP_TABLE_CKSON; int /*<<< orphan*/  ucEnableGB_VDROOP_TABLE_CKSOFF; void* usMaxVoltage_0_25mv; void* ulAVFSGB_FUSE_TABLE_CKSON_b; void* usAVFSGB_FUSE_TABLE_CKSON_m2; void* ulAVFSGB_FUSE_TABLE_CKSON_m1; void* ulAVFSGB_FUSE_TABLE_CKSOFF_b; void* usAVFSGB_FUSE_TABLE_CKSOFF_m2; void* ulAVFSGB_FUSE_TABLE_CKSOFF_m1; void* ulGB_VDROOP_TABLE_CKSON_a2; void* ulGB_VDROOP_TABLE_CKSON_a1; void* ulGB_VDROOP_TABLE_CKSON_a0; void* ulGB_VDROOP_TABLE_CKSOFF_a2; void* ulGB_VDROOP_TABLE_CKSOFF_a1; void* ulGB_VDROOP_TABLE_CKSOFF_a0; void* usAVFS_meanNsigma_Platform_sigma; void* usAVFS_meanNsigma_Platform_mean; void* usAVFS_meanNsigma_DC_tol_sigma; void* ulAVFS_meanNsigma_Acontant2; void* ulAVFS_meanNsigma_Acontant1; void* ulAVFS_meanNsigma_Acontant0; } ;
struct TYPE_2__ {int /*<<< orphan*/  ucEnableApplyAVFS_CKS_OFF_Voltage; int /*<<< orphan*/  usPSM_Age_ComFactor; int /*<<< orphan*/  ucEnableGB_FUSE_TABLE_CKSON; int /*<<< orphan*/  ucEnableGB_FUSE_TABLE_CKSOFF; int /*<<< orphan*/  ucEnableGB_VDROOP_TABLE_CKSON; int /*<<< orphan*/  ucEnableGB_VDROOP_TABLE_CKSOFF; int /*<<< orphan*/  usMaxVoltage_0_25mv; int /*<<< orphan*/  ulAVFSGB_FUSE_TABLE_CKSON_b; int /*<<< orphan*/  usAVFSGB_FUSE_TABLE_CKSON_m2; int /*<<< orphan*/  ulAVFSGB_FUSE_TABLE_CKSON_m1; int /*<<< orphan*/  ulAVFSGB_FUSE_TABLE_CKSOFF_b; int /*<<< orphan*/  usAVFSGB_FUSE_TABLE_CKSOFF_m2; int /*<<< orphan*/  ulAVFSGB_FUSE_TABLE_CKSOFF_m1; int /*<<< orphan*/  ulGB_VDROOP_TABLE_CKSON_a2; int /*<<< orphan*/  ulGB_VDROOP_TABLE_CKSON_a1; int /*<<< orphan*/  ulGB_VDROOP_TABLE_CKSON_a0; int /*<<< orphan*/  ulGB_VDROOP_TABLE_CKSOFF_a2; int /*<<< orphan*/  ulGB_VDROOP_TABLE_CKSOFF_a1; int /*<<< orphan*/  ulGB_VDROOP_TABLE_CKSOFF_a0; int /*<<< orphan*/  usAVFS_meanNsigma_Platform_sigma; int /*<<< orphan*/  usAVFS_meanNsigma_Platform_mean; int /*<<< orphan*/  usAVFS_meanNsigma_DC_tol_sigma; int /*<<< orphan*/  ulAVFS_meanNsigma_Acontant2; int /*<<< orphan*/  ulAVFS_meanNsigma_Acontant1; int /*<<< orphan*/  ulAVFS_meanNsigma_Acontant0; } ;
typedef  TYPE_1__ ATOM_ASIC_PROFILING_INFO_V3_6 ;

/* Variables and functions */
 int /*<<< orphan*/  ASIC_ProfilingInfo ; 
 int /*<<< orphan*/  DATA ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC4(struct pp_hwmgr *hwmgr,
				  struct pp_atom_ctrl__avfs_parameters *param)
{
	ATOM_ASIC_PROFILING_INFO_V3_6 *profile = NULL;

	if (param == NULL)
		return -EINVAL;

	profile = (ATOM_ASIC_PROFILING_INFO_V3_6 *)
			FUNC3(hwmgr->adev,
					FUNC0(DATA, ASIC_ProfilingInfo),
					NULL, NULL, NULL);
	if (!profile)
		return -1;

	param->ulAVFS_meanNsigma_Acontant0 = FUNC2(profile->ulAVFS_meanNsigma_Acontant0);
	param->ulAVFS_meanNsigma_Acontant1 = FUNC2(profile->ulAVFS_meanNsigma_Acontant1);
	param->ulAVFS_meanNsigma_Acontant2 = FUNC2(profile->ulAVFS_meanNsigma_Acontant2);
	param->usAVFS_meanNsigma_DC_tol_sigma = FUNC1(profile->usAVFS_meanNsigma_DC_tol_sigma);
	param->usAVFS_meanNsigma_Platform_mean = FUNC1(profile->usAVFS_meanNsigma_Platform_mean);
	param->usAVFS_meanNsigma_Platform_sigma = FUNC1(profile->usAVFS_meanNsigma_Platform_sigma);
	param->ulGB_VDROOP_TABLE_CKSOFF_a0 = FUNC2(profile->ulGB_VDROOP_TABLE_CKSOFF_a0);
	param->ulGB_VDROOP_TABLE_CKSOFF_a1 = FUNC2(profile->ulGB_VDROOP_TABLE_CKSOFF_a1);
	param->ulGB_VDROOP_TABLE_CKSOFF_a2 = FUNC2(profile->ulGB_VDROOP_TABLE_CKSOFF_a2);
	param->ulGB_VDROOP_TABLE_CKSON_a0 = FUNC2(profile->ulGB_VDROOP_TABLE_CKSON_a0);
	param->ulGB_VDROOP_TABLE_CKSON_a1 = FUNC2(profile->ulGB_VDROOP_TABLE_CKSON_a1);
	param->ulGB_VDROOP_TABLE_CKSON_a2 = FUNC2(profile->ulGB_VDROOP_TABLE_CKSON_a2);
	param->ulAVFSGB_FUSE_TABLE_CKSOFF_m1 = FUNC2(profile->ulAVFSGB_FUSE_TABLE_CKSOFF_m1);
	param->usAVFSGB_FUSE_TABLE_CKSOFF_m2 = FUNC1(profile->usAVFSGB_FUSE_TABLE_CKSOFF_m2);
	param->ulAVFSGB_FUSE_TABLE_CKSOFF_b = FUNC2(profile->ulAVFSGB_FUSE_TABLE_CKSOFF_b);
	param->ulAVFSGB_FUSE_TABLE_CKSON_m1 = FUNC2(profile->ulAVFSGB_FUSE_TABLE_CKSON_m1);
	param->usAVFSGB_FUSE_TABLE_CKSON_m2 = FUNC1(profile->usAVFSGB_FUSE_TABLE_CKSON_m2);
	param->ulAVFSGB_FUSE_TABLE_CKSON_b = FUNC2(profile->ulAVFSGB_FUSE_TABLE_CKSON_b);
	param->usMaxVoltage_0_25mv = FUNC1(profile->usMaxVoltage_0_25mv);
	param->ucEnableGB_VDROOP_TABLE_CKSOFF = profile->ucEnableGB_VDROOP_TABLE_CKSOFF;
	param->ucEnableGB_VDROOP_TABLE_CKSON = profile->ucEnableGB_VDROOP_TABLE_CKSON;
	param->ucEnableGB_FUSE_TABLE_CKSOFF = profile->ucEnableGB_FUSE_TABLE_CKSOFF;
	param->ucEnableGB_FUSE_TABLE_CKSON = profile->ucEnableGB_FUSE_TABLE_CKSON;
	param->usPSM_Age_ComFactor = FUNC1(profile->usPSM_Age_ComFactor);
	param->ucEnableApplyAVFS_CKS_OFF_Voltage = profile->ucEnableApplyAVFS_CKS_OFF_Voltage;

	return 0;
}