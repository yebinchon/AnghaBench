
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct pp_hwmgr {int device; } ;


 int cgs_write_register (int ,int ,int ) ;
 int mmSMC_MESSAGE_0 ;

int smu7_send_msg_to_smc_without_waiting(struct pp_hwmgr *hwmgr, uint16_t msg)
{
 cgs_write_register(hwmgr->device, mmSMC_MESSAGE_0, msg);

 return 0;
}
