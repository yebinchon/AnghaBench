
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu7_smumgr {int avfs_btc_param; } ;
struct pp_hwmgr {int device; scalar_t__ smu_backend; } ;


 int PPSMC_MSG_PerformBtc ;
 int cgs_write_register (int ,int ,int) ;
 int mmCP_MEC_CNTL ;
 int mmGRBM_SOFT_RESET ;
 int pr_info (char*) ;
 scalar_t__ smu7_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,int) ;

__attribute__((used)) static int polaris10_perform_btc(struct pp_hwmgr *hwmgr)
{
 int result = 0;
 struct smu7_smumgr *smu_data = (struct smu7_smumgr *)(hwmgr->smu_backend);

 if (0 != smu_data->avfs_btc_param) {
  if (0 != smu7_send_msg_to_smc_with_parameter(hwmgr, PPSMC_MSG_PerformBtc, smu_data->avfs_btc_param)) {
   pr_info("[AVFS][SmuPolaris10_PerformBtc] PerformBTC SMU msg failed");
   result = -1;
  }
 }
 if (smu_data->avfs_btc_param > 1) {


  cgs_write_register(hwmgr->device, mmCP_MEC_CNTL, 0x50000000);

  cgs_write_register(hwmgr->device, mmGRBM_SOFT_RESET, 0xffffffff);
  cgs_write_register(hwmgr->device, mmGRBM_SOFT_RESET, 0);
 }
 return result;
}
