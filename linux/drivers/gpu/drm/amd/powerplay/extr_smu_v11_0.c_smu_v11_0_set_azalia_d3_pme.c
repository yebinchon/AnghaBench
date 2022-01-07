
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_context {int mutex; } ;


 int SMU_MSG_BacoAudioD3PME ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int smu_send_smc_msg (struct smu_context*,int ) ;

__attribute__((used)) static int smu_v11_0_set_azalia_d3_pme(struct smu_context *smu)
{
 int ret = 0;

 mutex_lock(&smu->mutex);
 ret = smu_send_smc_msg(smu, SMU_MSG_BacoAudioD3PME);
 mutex_unlock(&smu->mutex);

 return ret;
}
