
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pp_hwmgr {int dummy; } ;


 int PPSMC_MSG_DramLogSetDramAddrHigh ;
 int PPSMC_MSG_DramLogSetDramAddrLow ;
 int PPSMC_MSG_DramLogSetDramSize ;
 int PPSMC_MSG_SetSystemVirtualDramAddrHigh ;
 int PPSMC_MSG_SetSystemVirtualDramAddrLow ;
 int smum_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,int ) ;

__attribute__((used)) static int vega10_notify_cac_buffer_info(struct pp_hwmgr *hwmgr,
     uint32_t virtual_addr_low,
     uint32_t virtual_addr_hi,
     uint32_t mc_addr_low,
     uint32_t mc_addr_hi,
     uint32_t size)
{
 smum_send_msg_to_smc_with_parameter(hwmgr,
     PPSMC_MSG_SetSystemVirtualDramAddrHigh,
     virtual_addr_hi);
 smum_send_msg_to_smc_with_parameter(hwmgr,
     PPSMC_MSG_SetSystemVirtualDramAddrLow,
     virtual_addr_low);
 smum_send_msg_to_smc_with_parameter(hwmgr,
     PPSMC_MSG_DramLogSetDramAddrHigh,
     mc_addr_hi);

 smum_send_msg_to_smc_with_parameter(hwmgr,
     PPSMC_MSG_DramLogSetDramAddrLow,
     mc_addr_low);

 smum_send_msg_to_smc_with_parameter(hwmgr,
     PPSMC_MSG_DramLogSetDramSize,
     size);
 return 0;
}
