
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int device; } ;


 int PHM_READ_FIELD (int ,int ,int ) ;
 int PHM_WAIT_FIELD_UNEQUAL (struct pp_hwmgr*,int ,int ,int ) ;
 int PPSMC_MSG_Test ;
 int SMC_RESP ;
 int SMC_RESP_0 ;
 int cgs_write_register (int ,int ,int) ;
 int mmSMC_MESSAGE_0 ;
 int mmSMC_MSG_ARG_0 ;
 int pr_info (char*) ;

int smu7_send_msg_to_smc_offset(struct pp_hwmgr *hwmgr)
{
 cgs_write_register(hwmgr->device, mmSMC_MSG_ARG_0, 0x20000);

 cgs_write_register(hwmgr->device, mmSMC_MESSAGE_0, PPSMC_MSG_Test);

 PHM_WAIT_FIELD_UNEQUAL(hwmgr, SMC_RESP_0, SMC_RESP, 0);

 if (1 != PHM_READ_FIELD(hwmgr->device, SMC_RESP_0, SMC_RESP))
  pr_info("Failed to send Message.\n");

 return 0;
}
