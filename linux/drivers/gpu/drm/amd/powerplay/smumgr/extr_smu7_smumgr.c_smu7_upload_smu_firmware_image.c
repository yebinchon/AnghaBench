
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct smu7_smumgr {int security_hard_key; } ;
struct pp_hwmgr {int smu_version; int is_kicker; int device; scalar_t__ smu_backend; } ;
struct cgs_firmware_info {scalar_t__ kptr; int image_size; int version; int is_kicker; int member_0; } ;


 int SMU7_SMC_SIZE ;
 int UCODE_ID_SMU ;
 int UCODE_ID_SMU_SK ;
 int cgs_get_firmware_info (int ,int ,struct cgs_firmware_info*) ;
 int smu7_convert_fw_type_to_cgs (int ) ;
 int smu7_upload_smc_firmware_data (struct pp_hwmgr*,int ,int *,int ) ;

int smu7_upload_smu_firmware_image(struct pp_hwmgr *hwmgr)
{
 int result = 0;
 struct smu7_smumgr *smu_data = (struct smu7_smumgr *)(hwmgr->smu_backend);

 struct cgs_firmware_info info = {0};

 if (smu_data->security_hard_key == 1)
  cgs_get_firmware_info(hwmgr->device,
   smu7_convert_fw_type_to_cgs(UCODE_ID_SMU), &info);
 else
  cgs_get_firmware_info(hwmgr->device,
   smu7_convert_fw_type_to_cgs(UCODE_ID_SMU_SK), &info);

 hwmgr->is_kicker = info.is_kicker;
 hwmgr->smu_version = info.version;
 result = smu7_upload_smc_firmware_data(hwmgr, info.image_size, (uint32_t *)info.kptr, SMU7_SMC_SIZE);

 return result;
}
