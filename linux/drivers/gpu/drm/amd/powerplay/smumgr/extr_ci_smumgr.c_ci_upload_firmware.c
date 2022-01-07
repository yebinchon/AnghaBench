
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int device; } ;


 int CGS_IND_REG__SMC ;
 int PHM_WAIT_INDIRECT_FIELD (struct pp_hwmgr*,int ,int ,int ,int) ;
 int PHM_WRITE_INDIRECT_FIELD (int ,int ,int ,int ,int) ;
 int RCU_UC_EVENTS ;
 int SMC_IND ;
 int SMC_SYSCON_CLOCK_CNTL_0 ;
 int SMC_SYSCON_MISC_CNTL ;
 int SMC_SYSCON_RESET_CNTL ;
 int boot_seq_done ;
 scalar_t__ ci_is_smc_ram_running (struct pp_hwmgr*) ;
 int ci_load_smc_ucode (struct pp_hwmgr*) ;
 int ck_disable ;
 int pr_info (char*) ;
 int pre_fetcher_en ;
 int rst_reg ;

__attribute__((used)) static int ci_upload_firmware(struct pp_hwmgr *hwmgr)
{
 if (ci_is_smc_ram_running(hwmgr)) {
  pr_info("smc is running, no need to load smc firmware\n");
  return 0;
 }
 PHM_WAIT_INDIRECT_FIELD(hwmgr, SMC_IND, RCU_UC_EVENTS,
   boot_seq_done, 1);
 PHM_WRITE_INDIRECT_FIELD(hwmgr->device, CGS_IND_REG__SMC, SMC_SYSCON_MISC_CNTL,
   pre_fetcher_en, 1);

 PHM_WRITE_INDIRECT_FIELD(hwmgr->device, CGS_IND_REG__SMC, SMC_SYSCON_CLOCK_CNTL_0, ck_disable, 1);
 PHM_WRITE_INDIRECT_FIELD(hwmgr->device, CGS_IND_REG__SMC, SMC_SYSCON_RESET_CNTL, rst_reg, 1);
 return ci_load_smc_ucode(hwmgr);
}
