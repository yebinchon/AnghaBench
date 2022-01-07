
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int device; } ;


 int CGS_IND_REG__SMC ;
 int FIRMWARE_FLAGS ;
 int INTERRUPTS_ENABLED ;
 int PHM_WAIT_VFPF_INDIRECT_FIELD (struct pp_hwmgr*,int ,int ,int ,int) ;
 int PHM_WAIT_VFPF_INDIRECT_FIELD_UNEQUAL (struct pp_hwmgr*,int ,int ,int ,int ) ;
 int PHM_WRITE_VFPF_INDIRECT_FIELD (int ,int ,int ,int ,int) ;
 int RCU_UC_EVENTS ;
 int SMC_IND ;
 int SMC_SYSCON_CLOCK_CNTL_0 ;
 int SMC_SYSCON_RESET_CNTL ;
 int boot_seq_done ;
 int cgs_write_ind_register (int ,int ,int ,int ) ;
 int ck_disable ;
 int ixFIRMWARE_FLAGS ;
 int rst_reg ;
 int smu7_program_jump_on_start (struct pp_hwmgr*) ;
 int smu7_upload_smu_firmware_image (struct pp_hwmgr*) ;

__attribute__((used)) static int fiji_start_smu_in_non_protection_mode(struct pp_hwmgr *hwmgr)
{
 int result = 0;


 PHM_WAIT_VFPF_INDIRECT_FIELD_UNEQUAL(hwmgr, SMC_IND,
   RCU_UC_EVENTS, boot_seq_done, 0);


 cgs_write_ind_register(hwmgr->device, CGS_IND_REG__SMC,
   ixFIRMWARE_FLAGS, 0);


 PHM_WRITE_VFPF_INDIRECT_FIELD(hwmgr->device, CGS_IND_REG__SMC,
   SMC_SYSCON_RESET_CNTL, rst_reg, 1);

 result = smu7_upload_smu_firmware_image(hwmgr);
 if (result)
  return result;


 smu7_program_jump_on_start(hwmgr);


 PHM_WRITE_VFPF_INDIRECT_FIELD(hwmgr->device, CGS_IND_REG__SMC,
   SMC_SYSCON_CLOCK_CNTL_0, ck_disable, 0);


 PHM_WRITE_VFPF_INDIRECT_FIELD(hwmgr->device, CGS_IND_REG__SMC,
   SMC_SYSCON_RESET_CNTL, rst_reg, 0);


 PHM_WAIT_VFPF_INDIRECT_FIELD(hwmgr, SMC_IND,
   FIRMWARE_FLAGS, INTERRUPTS_ENABLED, 1);

 return result;
}
