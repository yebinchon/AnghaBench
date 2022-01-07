
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int device; } ;


 int AUTO_START ;
 int CGS_IND_REG__SMC ;
 int EINVAL ;
 int FIRMWARE_FLAGS ;
 int INTERRUPTS_ENABLED ;
 int PHM_READ_VFPF_INDIRECT_FIELD (int ,int ,int ,int ) ;
 int PHM_WAIT_VFPF_INDIRECT_FIELD (struct pp_hwmgr*,int ,int ,int ,int) ;
 int PHM_WAIT_VFPF_INDIRECT_FIELD_UNEQUAL (struct pp_hwmgr*,int ,int ,int ,int ) ;
 int PHM_WRITE_VFPF_INDIRECT_FIELD (int ,int ,int ,int ,int) ;
 int RCU_UC_EVENTS ;
 int SMC_IND ;
 int SMC_SYSCON_CLOCK_CNTL_0 ;
 int SMC_SYSCON_RESET_CNTL ;
 int SMU_DONE ;
 int SMU_INPUT_DATA ;
 int SMU_PASS ;
 int SMU_STATUS ;
 int cgs_write_ind_register (int ,int ,int ,int ) ;
 int ck_disable ;
 int ixFIRMWARE_FLAGS ;
 int ixSMU_STATUS ;
 int pr_err (char*) ;
 int rst_reg ;
 int smu7_send_msg_to_smc_offset (struct pp_hwmgr*) ;
 int smu7_upload_smu_firmware_image (struct pp_hwmgr*) ;

__attribute__((used)) static int tonga_start_in_protection_mode(struct pp_hwmgr *hwmgr)
{
 int result;


 PHM_WRITE_VFPF_INDIRECT_FIELD(hwmgr->device, CGS_IND_REG__SMC,
  SMC_SYSCON_RESET_CNTL, rst_reg, 1);

 result = smu7_upload_smu_firmware_image(hwmgr);
 if (result)
  return result;


 cgs_write_ind_register(hwmgr->device, CGS_IND_REG__SMC,
  ixSMU_STATUS, 0);


 PHM_WRITE_VFPF_INDIRECT_FIELD(hwmgr->device, CGS_IND_REG__SMC,
  SMC_SYSCON_CLOCK_CNTL_0, ck_disable, 0);


 PHM_WRITE_VFPF_INDIRECT_FIELD(hwmgr->device, CGS_IND_REG__SMC,
  SMC_SYSCON_RESET_CNTL, rst_reg, 0);


 PHM_WRITE_VFPF_INDIRECT_FIELD(hwmgr->device, CGS_IND_REG__SMC,
  SMU_INPUT_DATA, AUTO_START, 1);


 cgs_write_ind_register(hwmgr->device, CGS_IND_REG__SMC,
  ixFIRMWARE_FLAGS, 0);

 PHM_WAIT_VFPF_INDIRECT_FIELD(hwmgr, SMC_IND,
  RCU_UC_EVENTS, INTERRUPTS_ENABLED, 1);




 smu7_send_msg_to_smc_offset(hwmgr);


 PHM_WAIT_VFPF_INDIRECT_FIELD_UNEQUAL(hwmgr, SMC_IND,
  SMU_STATUS, SMU_DONE, 0);


 if (1 != PHM_READ_VFPF_INDIRECT_FIELD(hwmgr->device,
    CGS_IND_REG__SMC, SMU_STATUS, SMU_PASS)) {
  pr_err("SMU Firmware start failed\n");
  return -EINVAL;
 }


 PHM_WAIT_VFPF_INDIRECT_FIELD(hwmgr, SMC_IND,
  FIRMWARE_FLAGS, INTERRUPTS_ENABLED, 1);

 return 0;
}
