
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct pp_hwmgr {int device; } ;


 int cgs_write_register (int ,int ,int ) ;
 int ci_send_msg_to_smc (struct pp_hwmgr*,int ) ;
 int mmSMC_MSG_ARG_0 ;

__attribute__((used)) static int ci_send_msg_to_smc_with_parameter(struct pp_hwmgr *hwmgr,
     uint16_t msg, uint32_t parameter)
{
 cgs_write_register(hwmgr->device, mmSMC_MSG_ARG_0, parameter);
 return ci_send_msg_to_smc(hwmgr, msg);
}
