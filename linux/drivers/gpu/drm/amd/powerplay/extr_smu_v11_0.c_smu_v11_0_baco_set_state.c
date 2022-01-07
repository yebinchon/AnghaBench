
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_baco_context {int state; int mutex; } ;
struct smu_context {struct smu_baco_context smu_baco; } ;
typedef enum smu_baco_state { ____Placeholder_smu_baco_state } smu_baco_state ;


 int BACO_SEQ_BACO ;
 int SMU_BACO_STATE_ENTER ;
 int SMU_MSG_EnterBaco ;
 int SMU_MSG_ExitBaco ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int smu_send_smc_msg (struct smu_context*,int ) ;
 int smu_send_smc_msg_with_param (struct smu_context*,int ,int ) ;
 int smu_v11_0_baco_get_state (struct smu_context*) ;

__attribute__((used)) static int smu_v11_0_baco_set_state(struct smu_context *smu, enum smu_baco_state state)
{

 struct smu_baco_context *smu_baco = &smu->smu_baco;
 int ret = 0;

 if (smu_v11_0_baco_get_state(smu) == state)
  return 0;

 mutex_lock(&smu_baco->mutex);

 if (state == SMU_BACO_STATE_ENTER)
  ret = smu_send_smc_msg_with_param(smu, SMU_MSG_EnterBaco, BACO_SEQ_BACO);
 else
  ret = smu_send_smc_msg(smu, SMU_MSG_ExitBaco);
 if (ret)
  goto out;

 smu_baco->state = state;
out:
 mutex_unlock(&smu_baco->mutex);
 return ret;
}
