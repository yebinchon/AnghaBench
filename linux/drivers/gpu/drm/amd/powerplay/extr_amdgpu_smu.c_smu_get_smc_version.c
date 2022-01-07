
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct smu_context {int dummy; } ;


 int EINVAL ;
 int SMU_MSG_GetDriverIfVersion ;
 int SMU_MSG_GetSmuVersion ;
 int smu_read_smc_arg (struct smu_context*,int *) ;
 int smu_send_smc_msg (struct smu_context*,int ) ;

int smu_get_smc_version(struct smu_context *smu, uint32_t *if_version, uint32_t *smu_version)
{
 int ret = 0;

 if (!if_version && !smu_version)
  return -EINVAL;

 if (if_version) {
  ret = smu_send_smc_msg(smu, SMU_MSG_GetDriverIfVersion);
  if (ret)
   return ret;

  ret = smu_read_smc_arg(smu, if_version);
  if (ret)
   return ret;
 }

 if (smu_version) {
  ret = smu_send_smc_msg(smu, SMU_MSG_GetSmuVersion);
  if (ret)
   return ret;

  ret = smu_read_smc_arg(smu, smu_version);
  if (ret)
   return ret;
 }

 return ret;
}
