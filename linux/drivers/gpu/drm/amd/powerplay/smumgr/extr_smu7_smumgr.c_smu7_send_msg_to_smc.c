
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct pp_hwmgr {int device; } ;


 int PHM_READ_FIELD (int ,int ,int ) ;
 int PHM_WAIT_FIELD_UNEQUAL (struct pp_hwmgr*,int ,int ,int ) ;
 int SMC_RESP ;
 int SMC_RESP_0 ;
 int cgs_write_register (int ,int ,int ) ;
 int mmSMC_MESSAGE_0 ;
 int mmSMC_RESP_0 ;
 int pr_debug (char*,...) ;
 int pr_info (char*,int,...) ;

int smu7_send_msg_to_smc(struct pp_hwmgr *hwmgr, uint16_t msg)
{
 int ret;

 PHM_WAIT_FIELD_UNEQUAL(hwmgr, SMC_RESP_0, SMC_RESP, 0);

 ret = PHM_READ_FIELD(hwmgr->device, SMC_RESP_0, SMC_RESP);

 if (ret == 0xFE)
  pr_debug("last message was not supported\n");
 else if (ret != 1)
  pr_info("\n last message was failed ret is %d\n", ret);

 cgs_write_register(hwmgr->device, mmSMC_RESP_0, 0);
 cgs_write_register(hwmgr->device, mmSMC_MESSAGE_0, msg);

 PHM_WAIT_FIELD_UNEQUAL(hwmgr, SMC_RESP_0, SMC_RESP, 0);

 ret = PHM_READ_FIELD(hwmgr->device, SMC_RESP_0, SMC_RESP);

 if (ret == 0xFE)
  pr_debug("message %x was not supported\n", msg);
 else if (ret != 1)
  pr_info("\n failed to send message %x ret is %d \n", msg, ret);

 return 0;
}
