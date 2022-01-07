
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct pp_hwmgr {int device; } ;


 int CGS_IND_REG__SMC ;
 int EINVAL ;
 int PPSMC_MSG_GetCurrPkgPwr ;
 int PPSMC_MSG_PmStatusLogSample ;
 int PPSMC_MSG_PmStatusLogStart ;
 scalar_t__ cgs_read_ind_register (int ,int ,int ) ;
 scalar_t__ cgs_read_register (int ,int ) ;
 int cgs_write_ind_register (int ,int ,int ,int ) ;
 int ixSMU_PM_STATUS_95 ;
 int mmSMC_MSG_ARG_0 ;
 int msleep (int) ;
 int smum_send_msg_to_smc (struct pp_hwmgr*,int ) ;
 int smum_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,int ) ;

__attribute__((used)) static int smu7_get_gpu_power(struct pp_hwmgr *hwmgr, u32 *query)
{
 int i;
 u32 tmp = 0;

 if (!query)
  return -EINVAL;

 smum_send_msg_to_smc_with_parameter(hwmgr, PPSMC_MSG_GetCurrPkgPwr, 0);
 tmp = cgs_read_register(hwmgr->device, mmSMC_MSG_ARG_0);
 *query = tmp;

 if (tmp != 0)
  return 0;

 smum_send_msg_to_smc(hwmgr, PPSMC_MSG_PmStatusLogStart);
 cgs_write_ind_register(hwmgr->device, CGS_IND_REG__SMC,
       ixSMU_PM_STATUS_95, 0);

 for (i = 0; i < 10; i++) {
  msleep(500);
  smum_send_msg_to_smc(hwmgr, PPSMC_MSG_PmStatusLogSample);
  tmp = cgs_read_ind_register(hwmgr->device,
      CGS_IND_REG__SMC,
      ixSMU_PM_STATUS_95);
  if (tmp != 0)
   break;
 }
 *query = tmp;

 return 0;
}
