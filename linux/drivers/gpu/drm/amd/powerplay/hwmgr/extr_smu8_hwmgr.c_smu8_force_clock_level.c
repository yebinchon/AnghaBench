
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pp_hwmgr {int dummy; } ;
typedef enum pp_clock_type { ____Placeholder_pp_clock_type } pp_clock_type ;


 int PPSMC_MSG_SetSclkSoftMax ;
 int PPSMC_MSG_SetSclkSoftMin ;

 int smum_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,int ) ;

__attribute__((used)) static int smu8_force_clock_level(struct pp_hwmgr *hwmgr,
  enum pp_clock_type type, uint32_t mask)
{
 switch (type) {
 case 128:
  smum_send_msg_to_smc_with_parameter(hwmgr,
    PPSMC_MSG_SetSclkSoftMin,
    mask);
  smum_send_msg_to_smc_with_parameter(hwmgr,
    PPSMC_MSG_SetSclkSoftMax,
    mask);
  break;
 default:
  break;
 }

 return 0;
}
