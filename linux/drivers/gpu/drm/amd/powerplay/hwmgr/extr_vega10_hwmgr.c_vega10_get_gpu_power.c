
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pp_hwmgr {int dummy; } ;


 int EINVAL ;
 int PPSMC_MSG_GetCurrPkgPwr ;
 int smum_get_argument (struct pp_hwmgr*) ;
 int smum_send_msg_to_smc (struct pp_hwmgr*,int ) ;

__attribute__((used)) static int vega10_get_gpu_power(struct pp_hwmgr *hwmgr,
  uint32_t *query)
{
 uint32_t value;

 if (!query)
  return -EINVAL;

 smum_send_msg_to_smc(hwmgr, PPSMC_MSG_GetCurrPkgPwr);
 value = smum_get_argument(hwmgr);


 *query = value << 8;

 return 0;
}
