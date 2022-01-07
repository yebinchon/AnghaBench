
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int dummy; } ;
typedef enum SMU_ASIC_RESET_MODE { ____Placeholder_SMU_ASIC_RESET_MODE } SMU_ASIC_RESET_MODE ;


 int PPSMC_MSG_DeviceDriverReset ;
 int smum_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,int) ;

__attribute__((used)) static int smu10_asic_reset(struct pp_hwmgr *hwmgr, enum SMU_ASIC_RESET_MODE mode)
{
 return smum_send_msg_to_smc_with_parameter(hwmgr,
         PPSMC_MSG_DeviceDriverReset,
         mode);
}
