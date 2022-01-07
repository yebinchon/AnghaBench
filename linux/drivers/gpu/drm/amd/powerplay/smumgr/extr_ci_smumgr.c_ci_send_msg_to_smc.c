
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
 int pr_info (char*,int ,int) ;

__attribute__((used)) static int ci_send_msg_to_smc(struct pp_hwmgr *hwmgr, uint16_t msg)
{
 int ret;

 cgs_write_register(hwmgr->device, mmSMC_RESP_0, 0);
 cgs_write_register(hwmgr->device, mmSMC_MESSAGE_0, msg);

 PHM_WAIT_FIELD_UNEQUAL(hwmgr, SMC_RESP_0, SMC_RESP, 0);

 ret = PHM_READ_FIELD(hwmgr->device, SMC_RESP_0, SMC_RESP);

 if (ret != 1)
  pr_info("\n failed to send message %x ret is %d\n", msg, ret);

 return 0;
}
