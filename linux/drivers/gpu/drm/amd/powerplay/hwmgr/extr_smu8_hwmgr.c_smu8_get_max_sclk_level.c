
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct smu8_hwmgr {scalar_t__ max_sclk_level; } ;
struct pp_hwmgr {struct smu8_hwmgr* backend; } ;


 int PPSMC_MSG_GetMaxSclkLevel ;
 scalar_t__ smum_get_argument (struct pp_hwmgr*) ;
 int smum_send_msg_to_smc (struct pp_hwmgr*,int ) ;

__attribute__((used)) static uint32_t smu8_get_max_sclk_level(struct pp_hwmgr *hwmgr)
{
 struct smu8_hwmgr *data = hwmgr->backend;

 if (data->max_sclk_level == 0) {
  smum_send_msg_to_smc(hwmgr, PPSMC_MSG_GetMaxSclkLevel);
  data->max_sclk_level = smum_get_argument(hwmgr) + 1;
 }

 return data->max_sclk_level;
}
