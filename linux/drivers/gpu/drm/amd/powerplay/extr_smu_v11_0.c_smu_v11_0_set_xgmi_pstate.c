
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct smu_context {int mutex; } ;


 int SMU_MSG_SetXgmiMode ;
 int XGMI_STATE_D0 ;
 int XGMI_STATE_D3 ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int smu_send_smc_msg_with_param (struct smu_context*,int ,int ) ;

__attribute__((used)) static int smu_v11_0_set_xgmi_pstate(struct smu_context *smu,
         uint32_t pstate)
{
 int ret = 0;
 mutex_lock(&(smu->mutex));
 ret = smu_send_smc_msg_with_param(smu,
       SMU_MSG_SetXgmiMode,
       pstate ? XGMI_STATE_D0 : XGMI_STATE_D3);
 mutex_unlock(&(smu->mutex));
 return ret;
}
