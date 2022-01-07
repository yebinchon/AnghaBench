
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct smu7_hwmgr {int power_containment_features; } ;
struct pp_hwmgr {scalar_t__ backend; } ;


 int POWERCONTAINMENT_FEATURE_PkgPwrLimit ;
 int PPSMC_MSG_PkgPwrSetLimit ;
 int smum_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,int) ;

int smu7_set_power_limit(struct pp_hwmgr *hwmgr, uint32_t n)
{
 struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);

 if (data->power_containment_features &
   POWERCONTAINMENT_FEATURE_PkgPwrLimit)
  return smum_send_msg_to_smc_with_parameter(hwmgr,
    PPSMC_MSG_PkgPwrSetLimit, n<<8);
 return 0;
}
