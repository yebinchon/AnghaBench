
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pp_hwmgr {int adev; } ;
struct pp_atom_ctrl__avfs_parameters {int ucEnableApplyAVFS_CKS_OFF_Voltage; void* usPSM_Age_ComFactor; int ucEnableGB_FUSE_TABLE_CKSON; int ucEnableGB_FUSE_TABLE_CKSOFF; int ucEnableGB_VDROOP_TABLE_CKSON; int ucEnableGB_VDROOP_TABLE_CKSOFF; void* usMaxVoltage_0_25mv; void* ulAVFSGB_FUSE_TABLE_CKSON_b; void* usAVFSGB_FUSE_TABLE_CKSON_m2; void* ulAVFSGB_FUSE_TABLE_CKSON_m1; void* ulAVFSGB_FUSE_TABLE_CKSOFF_b; void* usAVFSGB_FUSE_TABLE_CKSOFF_m2; void* ulAVFSGB_FUSE_TABLE_CKSOFF_m1; void* ulGB_VDROOP_TABLE_CKSON_a2; void* ulGB_VDROOP_TABLE_CKSON_a1; void* ulGB_VDROOP_TABLE_CKSON_a0; void* ulGB_VDROOP_TABLE_CKSOFF_a2; void* ulGB_VDROOP_TABLE_CKSOFF_a1; void* ulGB_VDROOP_TABLE_CKSOFF_a0; void* usAVFS_meanNsigma_Platform_sigma; void* usAVFS_meanNsigma_Platform_mean; void* usAVFS_meanNsigma_DC_tol_sigma; void* ulAVFS_meanNsigma_Acontant2; void* ulAVFS_meanNsigma_Acontant1; void* ulAVFS_meanNsigma_Acontant0; } ;
struct TYPE_2__ {int ucEnableApplyAVFS_CKS_OFF_Voltage; int usPSM_Age_ComFactor; int ucEnableGB_FUSE_TABLE_CKSON; int ucEnableGB_FUSE_TABLE_CKSOFF; int ucEnableGB_VDROOP_TABLE_CKSON; int ucEnableGB_VDROOP_TABLE_CKSOFF; int usMaxVoltage_0_25mv; int ulAVFSGB_FUSE_TABLE_CKSON_b; int usAVFSGB_FUSE_TABLE_CKSON_m2; int ulAVFSGB_FUSE_TABLE_CKSON_m1; int ulAVFSGB_FUSE_TABLE_CKSOFF_b; int usAVFSGB_FUSE_TABLE_CKSOFF_m2; int ulAVFSGB_FUSE_TABLE_CKSOFF_m1; int ulGB_VDROOP_TABLE_CKSON_a2; int ulGB_VDROOP_TABLE_CKSON_a1; int ulGB_VDROOP_TABLE_CKSON_a0; int ulGB_VDROOP_TABLE_CKSOFF_a2; int ulGB_VDROOP_TABLE_CKSOFF_a1; int ulGB_VDROOP_TABLE_CKSOFF_a0; int usAVFS_meanNsigma_Platform_sigma; int usAVFS_meanNsigma_Platform_mean; int usAVFS_meanNsigma_DC_tol_sigma; int ulAVFS_meanNsigma_Acontant2; int ulAVFS_meanNsigma_Acontant1; int ulAVFS_meanNsigma_Acontant0; } ;
typedef TYPE_1__ ATOM_ASIC_PROFILING_INFO_V3_6 ;


 int ASIC_ProfilingInfo ;
 int DATA ;
 int EINVAL ;
 int GetIndexIntoMasterTable (int ,int ) ;
 void* le16_to_cpu (int ) ;
 void* le32_to_cpu (int ) ;
 scalar_t__ smu_atom_get_data_table (int ,int ,int *,int *,int *) ;

int atomctrl_get_avfs_information(struct pp_hwmgr *hwmgr,
      struct pp_atom_ctrl__avfs_parameters *param)
{
 ATOM_ASIC_PROFILING_INFO_V3_6 *profile = ((void*)0);

 if (param == ((void*)0))
  return -EINVAL;

 profile = (ATOM_ASIC_PROFILING_INFO_V3_6 *)
   smu_atom_get_data_table(hwmgr->adev,
     GetIndexIntoMasterTable(DATA, ASIC_ProfilingInfo),
     ((void*)0), ((void*)0), ((void*)0));
 if (!profile)
  return -1;

 param->ulAVFS_meanNsigma_Acontant0 = le32_to_cpu(profile->ulAVFS_meanNsigma_Acontant0);
 param->ulAVFS_meanNsigma_Acontant1 = le32_to_cpu(profile->ulAVFS_meanNsigma_Acontant1);
 param->ulAVFS_meanNsigma_Acontant2 = le32_to_cpu(profile->ulAVFS_meanNsigma_Acontant2);
 param->usAVFS_meanNsigma_DC_tol_sigma = le16_to_cpu(profile->usAVFS_meanNsigma_DC_tol_sigma);
 param->usAVFS_meanNsigma_Platform_mean = le16_to_cpu(profile->usAVFS_meanNsigma_Platform_mean);
 param->usAVFS_meanNsigma_Platform_sigma = le16_to_cpu(profile->usAVFS_meanNsigma_Platform_sigma);
 param->ulGB_VDROOP_TABLE_CKSOFF_a0 = le32_to_cpu(profile->ulGB_VDROOP_TABLE_CKSOFF_a0);
 param->ulGB_VDROOP_TABLE_CKSOFF_a1 = le32_to_cpu(profile->ulGB_VDROOP_TABLE_CKSOFF_a1);
 param->ulGB_VDROOP_TABLE_CKSOFF_a2 = le32_to_cpu(profile->ulGB_VDROOP_TABLE_CKSOFF_a2);
 param->ulGB_VDROOP_TABLE_CKSON_a0 = le32_to_cpu(profile->ulGB_VDROOP_TABLE_CKSON_a0);
 param->ulGB_VDROOP_TABLE_CKSON_a1 = le32_to_cpu(profile->ulGB_VDROOP_TABLE_CKSON_a1);
 param->ulGB_VDROOP_TABLE_CKSON_a2 = le32_to_cpu(profile->ulGB_VDROOP_TABLE_CKSON_a2);
 param->ulAVFSGB_FUSE_TABLE_CKSOFF_m1 = le32_to_cpu(profile->ulAVFSGB_FUSE_TABLE_CKSOFF_m1);
 param->usAVFSGB_FUSE_TABLE_CKSOFF_m2 = le16_to_cpu(profile->usAVFSGB_FUSE_TABLE_CKSOFF_m2);
 param->ulAVFSGB_FUSE_TABLE_CKSOFF_b = le32_to_cpu(profile->ulAVFSGB_FUSE_TABLE_CKSOFF_b);
 param->ulAVFSGB_FUSE_TABLE_CKSON_m1 = le32_to_cpu(profile->ulAVFSGB_FUSE_TABLE_CKSON_m1);
 param->usAVFSGB_FUSE_TABLE_CKSON_m2 = le16_to_cpu(profile->usAVFSGB_FUSE_TABLE_CKSON_m2);
 param->ulAVFSGB_FUSE_TABLE_CKSON_b = le32_to_cpu(profile->ulAVFSGB_FUSE_TABLE_CKSON_b);
 param->usMaxVoltage_0_25mv = le16_to_cpu(profile->usMaxVoltage_0_25mv);
 param->ucEnableGB_VDROOP_TABLE_CKSOFF = profile->ucEnableGB_VDROOP_TABLE_CKSOFF;
 param->ucEnableGB_VDROOP_TABLE_CKSON = profile->ucEnableGB_VDROOP_TABLE_CKSON;
 param->ucEnableGB_FUSE_TABLE_CKSOFF = profile->ucEnableGB_FUSE_TABLE_CKSOFF;
 param->ucEnableGB_FUSE_TABLE_CKSON = profile->ucEnableGB_FUSE_TABLE_CKSON;
 param->usPSM_Age_ComFactor = le16_to_cpu(profile->usPSM_Age_ComFactor);
 param->ucEnableApplyAVFS_CKS_OFF_Voltage = profile->ucEnableApplyAVFS_CKS_OFF_Voltage;

 return 0;
}
