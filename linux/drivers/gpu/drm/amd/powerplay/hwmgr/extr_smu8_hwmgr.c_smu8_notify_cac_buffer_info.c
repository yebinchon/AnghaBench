
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pp_hwmgr {int dummy; } ;


 int PPSMC_MSG_DramAddrHiPhysical ;
 int PPSMC_MSG_DramAddrHiVirtual ;
 int PPSMC_MSG_DramAddrLoPhysical ;
 int PPSMC_MSG_DramAddrLoVirtual ;
 int PPSMC_MSG_DramBufferSize ;
 int smum_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,int ) ;

__attribute__((used)) static int smu8_notify_cac_buffer_info(struct pp_hwmgr *hwmgr,
     uint32_t virtual_addr_low,
     uint32_t virtual_addr_hi,
     uint32_t mc_addr_low,
     uint32_t mc_addr_hi,
     uint32_t size)
{
 smum_send_msg_to_smc_with_parameter(hwmgr,
     PPSMC_MSG_DramAddrHiVirtual,
     mc_addr_hi);
 smum_send_msg_to_smc_with_parameter(hwmgr,
     PPSMC_MSG_DramAddrLoVirtual,
     mc_addr_low);
 smum_send_msg_to_smc_with_parameter(hwmgr,
     PPSMC_MSG_DramAddrHiPhysical,
     virtual_addr_hi);
 smum_send_msg_to_smc_with_parameter(hwmgr,
     PPSMC_MSG_DramAddrLoPhysical,
     virtual_addr_low);

 smum_send_msg_to_smc_with_parameter(hwmgr,
     PPSMC_MSG_DramBufferSize,
     size);
 return 0;
}
