
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pp_hwmgr {int dummy; } ;


 int PPSMC_MSG_GetCurrentRpm ;
 int smum_get_argument (struct pp_hwmgr*) ;
 int smum_send_msg_to_smc (struct pp_hwmgr*,int ) ;

__attribute__((used)) static int vega10_get_current_rpm(struct pp_hwmgr *hwmgr, uint32_t *current_rpm)
{
 smum_send_msg_to_smc(hwmgr, PPSMC_MSG_GetCurrentRpm);
 *current_rpm = smum_get_argument(hwmgr);
 return 0;
}
