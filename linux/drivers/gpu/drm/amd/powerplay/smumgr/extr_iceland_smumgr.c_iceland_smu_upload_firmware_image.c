
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct pp_hwmgr {int * device; int smu_version; } ;
struct cgs_firmware_info {int image_size; int ucode_start_address; scalar_t__ kptr; int version; int member_0; } ;


 int CGS_IND_REG__SMC ;
 int EINVAL ;
 int ICELAND_SMC_SIZE ;
 int PHM_WAIT_INDIRECT_FIELD_UNEQUAL (struct pp_hwmgr*,int ,int ,int ,int ) ;
 int RCU_UC_EVENTS ;
 int SMC_IND ;
 int UCODE_ID_SMU ;
 int boot_seq_done ;
 int cgs_get_firmware_info (int *,int ,struct cgs_firmware_info*) ;
 int cgs_read_ind_register (int *,int ,int ) ;
 int cgs_write_ind_register (int *,int ,int ,int) ;
 int iceland_reset_smc (struct pp_hwmgr*) ;
 int iceland_stop_smc_clock (struct pp_hwmgr*) ;
 int iceland_upload_smc_firmware_data (struct pp_hwmgr*,int,int *,int,int ) ;
 int ixSMC_SYSCON_MISC_CNTL ;
 int pr_err (char*) ;
 int smu7_convert_fw_type_to_cgs (int ) ;

__attribute__((used)) static int iceland_smu_upload_firmware_image(struct pp_hwmgr *hwmgr)
{
 uint32_t val;
 struct cgs_firmware_info info = {0};

 if (hwmgr == ((void*)0) || hwmgr->device == ((void*)0))
  return -EINVAL;


 cgs_get_firmware_info(hwmgr->device,
  smu7_convert_fw_type_to_cgs(UCODE_ID_SMU), &info);

 if (info.image_size & 3) {
  pr_err("[ powerplay ] SMC ucode is not 4 bytes aligned\n");
  return -EINVAL;
 }

 if (info.image_size > ICELAND_SMC_SIZE) {
  pr_err("[ powerplay ] SMC address is beyond the SMC RAM area\n");
  return -EINVAL;
 }
 hwmgr->smu_version = info.version;

 PHM_WAIT_INDIRECT_FIELD_UNEQUAL(hwmgr, SMC_IND,
      RCU_UC_EVENTS, boot_seq_done, 0);


 val = cgs_read_ind_register(hwmgr->device, CGS_IND_REG__SMC,
        ixSMC_SYSCON_MISC_CNTL);
 cgs_write_ind_register(hwmgr->device, CGS_IND_REG__SMC,
          ixSMC_SYSCON_MISC_CNTL, val | 1);


 iceland_stop_smc_clock(hwmgr);


 iceland_reset_smc(hwmgr);
 iceland_upload_smc_firmware_data(hwmgr, info.image_size,
    (uint8_t *)info.kptr, ICELAND_SMC_SIZE,
    info.ucode_start_address);

 return 0;
}
