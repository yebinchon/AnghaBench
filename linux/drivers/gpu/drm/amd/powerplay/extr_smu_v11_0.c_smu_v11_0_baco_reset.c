
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_context {int dummy; } ;


 int BACO_SEQ_BACO ;
 int SMU_BACO_STATE_ENTER ;
 int SMU_BACO_STATE_EXIT ;
 int msleep (int) ;
 int smu_v11_0_baco_set_armd3_sequence (struct smu_context*,int ) ;
 int smu_v11_0_baco_set_state (struct smu_context*,int ) ;

__attribute__((used)) static int smu_v11_0_baco_reset(struct smu_context *smu)
{
 int ret = 0;

 ret = smu_v11_0_baco_set_armd3_sequence(smu, BACO_SEQ_BACO);
 if (ret)
  return ret;

 ret = smu_v11_0_baco_set_state(smu, SMU_BACO_STATE_ENTER);
 if (ret)
  return ret;

 msleep(10);

 ret = smu_v11_0_baco_set_state(smu, SMU_BACO_STATE_EXIT);
 if (ret)
  return ret;

 return ret;
}
